; ModuleID = '/users/timwu/FPGA-Lane-Edge-Detection-V70/hls/edge_detection/edge_project/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<8>" = type { %"struct.ap_int_base<8, false>" }
%"struct.ap_int_base<8, false>" = type { %"struct.ssdm_int<8, false>" }
%"struct.ssdm_int<8, false>" = type { i8 }

; Function Attrs: noinline
define void @apatb_edge_detect_ir([960 x %"struct.ap_uint<8>"]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="540" "maxi" %in_img, [960 x %"struct.ap_uint<8>"]* noalias nocapture nonnull "fpga.decayed.dim.hint"="540" "maxi" %out_img, i32 %rows, i32 %cols, i32 %low_thresh, i32 %high_thresh) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 518400)
  %in_img_copy = bitcast i8* %malloccall to [540 x [960 x i8]]*
  %malloccall1 = call i8* @malloc(i64 518400)
  %out_img_copy = bitcast i8* %malloccall1 to [540 x [960 x i8]]*
  %0 = bitcast [960 x %"struct.ap_uint<8>"]* %in_img to [540 x [960 x %"struct.ap_uint<8>"]]*
  %1 = bitcast [960 x %"struct.ap_uint<8>"]* %out_img to [540 x [960 x %"struct.ap_uint<8>"]]*
  call fastcc void @copy_in([540 x [960 x %"struct.ap_uint<8>"]]* nonnull %0, [540 x [960 x i8]]* %in_img_copy, [540 x [960 x %"struct.ap_uint<8>"]]* nonnull %1, [540 x [960 x i8]]* %out_img_copy)
  call void @apatb_edge_detect_hw([540 x [960 x i8]]* %in_img_copy, [540 x [960 x i8]]* %out_img_copy, i32 %rows, i32 %cols, i32 %low_thresh, i32 %high_thresh)
  call void @copy_back([540 x [960 x %"struct.ap_uint<8>"]]* %0, [540 x [960 x i8]]* %in_img_copy, [540 x [960 x %"struct.ap_uint<8>"]]* %1, [540 x [960 x i8]]* %out_img_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([540 x [960 x %"struct.ap_uint<8>"]]* noalias readonly, [540 x [960 x i8]]* noalias, [540 x [960 x %"struct.ap_uint<8>"]]* noalias readonly, [540 x [960 x i8]]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a540a960struct.ap_uint<8>.20"([540 x [960 x i8]]* %1, [540 x [960 x %"struct.ap_uint<8>"]]* %0)
  call fastcc void @"onebyonecpy_hls.p0a540a960struct.ap_uint<8>.20"([540 x [960 x i8]]* %3, [540 x [960 x %"struct.ap_uint<8>"]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a540a960struct.ap_uint<8>"([540 x [960 x %"struct.ap_uint<8>"]]* %dst, [540 x [960 x %"struct.ap_uint<8>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [540 x [960 x %"struct.ap_uint<8>"]]* %src, null
  %1 = icmp eq [540 x [960 x %"struct.ap_uint<8>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [540 x [960 x %"struct.ap_uint<8>"]], [540 x [960 x %"struct.ap_uint<8>"]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [540 x [960 x %"struct.ap_uint<8>"]], [540 x [960 x %"struct.ap_uint<8>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a960struct.ap_uint<8>"([960 x %"struct.ap_uint<8>"]* %dst.addr, [960 x %"struct.ap_uint<8>"]* %src.addr, i64 960)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a960struct.ap_uint<8>"([960 x %"struct.ap_uint<8>"]* %dst, [960 x %"struct.ap_uint<8>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [960 x %"struct.ap_uint<8>"]* %src, null
  %1 = icmp eq [960 x %"struct.ap_uint<8>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [960 x %"struct.ap_uint<8>"], [960 x %"struct.ap_uint<8>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [960 x %"struct.ap_uint<8>"], [960 x %"struct.ap_uint<8>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %3, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([540 x [960 x %"struct.ap_uint<8>"]]* noalias, [540 x [960 x i8]]* noalias readonly, [540 x [960 x %"struct.ap_uint<8>"]]* noalias, [540 x [960 x i8]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a540a960struct.ap_uint<8>"([540 x [960 x %"struct.ap_uint<8>"]]* %0, [540 x [960 x i8]]* %1)
  call fastcc void @"onebyonecpy_hls.p0a540a960struct.ap_uint<8>"([540 x [960 x %"struct.ap_uint<8>"]]* %2, [540 x [960 x i8]]* %3)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a540a960struct.ap_uint<8>"([540 x [960 x %"struct.ap_uint<8>"]]* noalias %dst, [540 x [960 x i8]]* noalias readonly %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [540 x [960 x %"struct.ap_uint<8>"]]* %dst, null
  %1 = icmp eq [540 x [960 x i8]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a540a960struct.ap_uint<8>.13"([540 x [960 x %"struct.ap_uint<8>"]]* nonnull %dst, [540 x [960 x i8]]* nonnull %src, i64 540)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a540a960struct.ap_uint<8>.13"([540 x [960 x %"struct.ap_uint<8>"]]* %dst, [540 x [960 x i8]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [540 x [960 x i8]]* %src, null
  %1 = icmp eq [540 x [960 x %"struct.ap_uint<8>"]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [540 x [960 x %"struct.ap_uint<8>"]], [540 x [960 x %"struct.ap_uint<8>"]]* %dst, i64 0, i64 %for.loop.idx2
  %3 = getelementptr [540 x [960 x i8]], [540 x [960 x i8]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a960struct.ap_uint<8>.16"([960 x %"struct.ap_uint<8>"]* %dst.addr, [960 x i8]* %3, i64 960)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a960struct.ap_uint<8>.16"([960 x %"struct.ap_uint<8>"]* %dst, [960 x i8]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [960 x i8]* %src, null
  %1 = icmp eq [960 x %"struct.ap_uint<8>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [960 x i8], [960 x i8]* %src, i64 0, i64 %for.loop.idx8
  %dst.addr.0.0.06 = getelementptr [960 x %"struct.ap_uint<8>"], [960 x %"struct.ap_uint<8>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a540a960struct.ap_uint<8>.20"([540 x [960 x i8]]* noalias %dst, [540 x [960 x %"struct.ap_uint<8>"]]* noalias readonly %src) unnamed_addr #4 {
entry:
  %0 = icmp eq [540 x [960 x i8]]* %dst, null
  %1 = icmp eq [540 x [960 x %"struct.ap_uint<8>"]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a540a960struct.ap_uint<8>.23"([540 x [960 x i8]]* nonnull %dst, [540 x [960 x %"struct.ap_uint<8>"]]* nonnull %src, i64 540)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a540a960struct.ap_uint<8>.23"([540 x [960 x i8]]* %dst, [540 x [960 x %"struct.ap_uint<8>"]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [540 x [960 x %"struct.ap_uint<8>"]]* %src, null
  %1 = icmp eq [540 x [960 x i8]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = getelementptr [540 x [960 x i8]], [540 x [960 x i8]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [540 x [960 x %"struct.ap_uint<8>"]], [540 x [960 x %"struct.ap_uint<8>"]]* %src, i64 0, i64 %for.loop.idx2
  call void @"arraycpy_hls.p0a960struct.ap_uint<8>.26"([960 x i8]* %3, [960 x %"struct.ap_uint<8>"]* %src.addr, i64 960)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a960struct.ap_uint<8>.26"([960 x i8]* %dst, [960 x %"struct.ap_uint<8>"]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [960 x %"struct.ap_uint<8>"]* %src, null
  %1 = icmp eq [960 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [960 x %"struct.ap_uint<8>"], [960 x %"struct.ap_uint<8>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = getelementptr [960 x i8], [960 x i8]* %dst, i64 0, i64 %for.loop.idx8
  %4 = load i8, i8* %src.addr.0.0.05, align 1
  store i8 %4, i8* %3, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_edge_detect_hw([540 x [960 x i8]]*, [540 x [960 x i8]]*, i32, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([540 x [960 x %"struct.ap_uint<8>"]]* noalias, [540 x [960 x i8]]* noalias readonly, [540 x [960 x %"struct.ap_uint<8>"]]* noalias, [540 x [960 x i8]]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a540a960struct.ap_uint<8>"([540 x [960 x %"struct.ap_uint<8>"]]* %2, [540 x [960 x i8]]* %3)
  ret void
}

define void @edge_detect_hw_stub_wrapper([540 x [960 x i8]]*, [540 x [960 x i8]]*, i32, i32, i32, i32) #5 {
entry:
  %malloccall = tail call i8* @malloc(i64 518400)
  %6 = bitcast i8* %malloccall to [540 x [960 x %"struct.ap_uint<8>"]]*
  %malloccall1 = tail call i8* @malloc(i64 518400)
  %7 = bitcast i8* %malloccall1 to [540 x [960 x %"struct.ap_uint<8>"]]*
  call void @copy_out([540 x [960 x %"struct.ap_uint<8>"]]* %6, [540 x [960 x i8]]* %0, [540 x [960 x %"struct.ap_uint<8>"]]* %7, [540 x [960 x i8]]* %1)
  %8 = bitcast [540 x [960 x %"struct.ap_uint<8>"]]* %6 to [960 x %"struct.ap_uint<8>"]*
  %9 = bitcast [540 x [960 x %"struct.ap_uint<8>"]]* %7 to [960 x %"struct.ap_uint<8>"]*
  call void @edge_detect_hw_stub([960 x %"struct.ap_uint<8>"]* %8, [960 x %"struct.ap_uint<8>"]* %9, i32 %2, i32 %3, i32 %4, i32 %5)
  call void @copy_in([540 x [960 x %"struct.ap_uint<8>"]]* %6, [540 x [960 x i8]]* %0, [540 x [960 x %"struct.ap_uint<8>"]]* %7, [540 x [960 x i8]]* %1)
  ret void
}

declare void @edge_detect_hw_stub([960 x %"struct.ap_uint<8>"]*, [960 x %"struct.ap_uint<8>"]*, i32, i32, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
