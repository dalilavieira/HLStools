; ModuleID = 'mandelbrot.postlto.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-f128:128:128-n8:16:32"
target triple = "i386-pc-linux-gnu"

%struct.thread_data = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@img = internal unnamed_addr global [64 x [64 x i8]] zeroinitializer, align 32

define i32 @main() nounwind {
bb3.3:
  %threads = alloca [4 x i32], align 4
  %data = alloca [4 x %struct.thread_data], align 8
  %scevgep3132 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 0, i32 0
  store i32 0, i32* %scevgep3132, align 8
  %scevgep33 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 0, i32 1
  store i32 16, i32* %scevgep33, align 4
  %scevgep3132.1 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 1, i32 0
  store i32 16, i32* %scevgep3132.1, align 8
  %scevgep33.1 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 1, i32 1
  store i32 32, i32* %scevgep33.1, align 4
  %scevgep3132.2 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 2, i32 0
  store i32 32, i32* %scevgep3132.2, align 8
  %scevgep33.2 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 2, i32 1
  store i32 48, i32* %scevgep33.2, align 4
  %scevgep3132.3 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 3, i32 0
  store i32 48, i32* %scevgep3132.3, align 8
  %scevgep33.3 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 3, i32 1
  store i32 64, i32* %scevgep33.3, align 4
  %scevgep2728 = bitcast [4 x %struct.thread_data]* %data to i8*
  %scevgep29 = getelementptr [4 x i32]* %threads, i32 0, i32 0
  call fastcc void @legup_pthreadcall_mandelbrot(i8* %scevgep2728, i32* %scevgep29, i32 0) nounwind, !TYPE !0, !PTHREADNAME !1, !NUMTHREADS !2, !THREADID !3, !FUNCTIONID !3
  %scevgep27.1 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 1
  %scevgep2728.1 = bitcast %struct.thread_data* %scevgep27.1 to i8*
  %scevgep29.1 = getelementptr [4 x i32]* %threads, i32 0, i32 1
  call fastcc void @legup_pthreadcall_mandelbrot(i8* %scevgep2728.1, i32* %scevgep29.1, i32 1) nounwind, !TYPE !0, !PTHREADNAME !1, !NUMTHREADS !2, !THREADID !2, !FUNCTIONID !3
  %scevgep27.2 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 2
  %scevgep2728.2 = bitcast %struct.thread_data* %scevgep27.2 to i8*
  %scevgep29.2 = getelementptr [4 x i32]* %threads, i32 0, i32 2
  call fastcc void @legup_pthreadcall_mandelbrot(i8* %scevgep2728.2, i32* %scevgep29.2, i32 2) nounwind, !TYPE !0, !PTHREADNAME !1, !NUMTHREADS !2, !THREADID !4, !FUNCTIONID !3
  %scevgep27.3 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 3
  %scevgep2728.3 = bitcast %struct.thread_data* %scevgep27.3 to i8*
  %scevgep29.3 = getelementptr [4 x i32]* %threads, i32 0, i32 3
  call fastcc void @legup_pthreadcall_mandelbrot(i8* %scevgep2728.3, i32* %scevgep29.3, i32 3) nounwind, !TYPE !0, !PTHREADNAME !1, !NUMTHREADS !2, !THREADID !5, !FUNCTIONID !3
  %0 = load i32* %scevgep29, align 4
  %1 = call fastcc i8* @legup_pthreadpoll(i32 %0) nounwind, !TYPE !6, !NUMTHREADS !2
  %.c = ptrtoint i8* %1 to i32
  %2 = load i32* %scevgep29.1, align 4
  %3 = call fastcc i8* @legup_pthreadpoll(i32 %2) nounwind, !TYPE !6, !NUMTHREADS !2
  %.c1 = ptrtoint i8* %3 to i32
  %4 = load i32* %scevgep29.2, align 4
  %5 = call fastcc i8* @legup_pthreadpoll(i32 %4) nounwind, !TYPE !6, !NUMTHREADS !2
  %.c2 = ptrtoint i8* %5 to i32
  %6 = load i32* %scevgep29.3, align 4
  %7 = call fastcc i8* @legup_pthreadpoll(i32 %6) nounwind, !TYPE !6, !NUMTHREADS !2
  %.c3 = ptrtoint i8* %7 to i32
  %8 = add nsw i32 %.c1, %.c
  %9 = add nsw i32 %.c2, %8
  %10 = add nsw i32 %.c3, %9
  %11 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i32 %10) nounwind
  %12 = icmp eq i32 %10, 2989
  br i1 %12, label %bb15, label %bb16

bb15:                                             ; preds = %bb3.3
  %13 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) nounwind
  br label %return

bb16:                                             ; preds = %bb3.3
  %14 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) nounwind
  br label %return

return:                                           ; preds = %bb16, %bb15
  ret i32 undef
}

declare i32 @printf(i8* noalias, ...)

declare void @__legup_label(i8*)

declare void @__legup_preserve_value(i8*)

define internal fastcc i8* @legup_pthreadpoll(i32 %threadID) noinline {
entry:
  %0 = call fastcc i8* @mandelbrot(i8* null) noinline, !TYPE !7
  ret i8* %0
}

define internal fastcc i8* @mandelbrot(i8* nocapture %threadarg) alwaysinline {
entry:
  %0 = bitcast i8* %threadarg to i32*
  %1 = load i32* %0, align 4
  %2 = getelementptr inbounds i8* %threadarg, i32 4
  %3 = bitcast i8* %2 to i32*
  %4 = load i32* %3, align 4
  %5 = icmp slt i32 %1, %4
  br i1 %5, label %bb5.preheader.lr.ph, label %bb8

bb5.preheader.lr.ph:                              ; preds = %entry
  %tmp32 = sub i32 %4, %1
  %tmp37 = shl i32 %1, 23
  %tmp38 = add i32 %tmp37, -268435456
  br label %bb5.preheader

bb1:                                              ; preds = %bb5.preheader, %bb4
  %i.015 = phi i32 [ 0, %bb5.preheader ], [ %24, %bb4 ]
  %count.014 = phi i32 [ %count.116, %bb5.preheader ], [ %23, %bb4 ]
  %scevgep = getelementptr [64 x [64 x i8]]* @img, i32 0, i32 %i.015, i32 %tmp34
  %tmp20 = mul i32 %i.015, 12582912
  %tmp21 = add i32 %tmp20, -536870912
  br label %bb2

bb2:                                              ; preds = %bb2, %bb1
  %fiter.013 = phi i8 [ 0, %bb1 ], [ %18, %bb2 ]
  %iter.012 = phi i8 [ 0, %bb1 ], [ %19, %bb2 ]
  %y.011 = phi i32 [ 0, %bb1 ], [ %tmp40, %bb2 ]
  %x.010 = phi i32 [ 0, %bb1 ], [ %tmp31, %bb2 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind
  %6 = sext i32 %x.010 to i64
  %7 = mul nsw i64 %6, %6
  %8 = ashr i64 %7, 28
  %9 = sext i32 %y.011 to i64
  %10 = mul nsw i64 %9, %9
  %11 = ashr i64 %10, 28
  %12 = add nsw i64 %11, %8
  %13 = mul nsw i64 %9, %6
  %14 = lshr i64 %13, 27
  %.tr = trunc i64 %14 to i32
  %15 = and i32 %.tr, -2
  %16 = icmp slt i64 %12, 1073741825
  %17 = zext i1 %16 to i8
  %18 = add i8 %17, %fiter.013
  %19 = add i8 %iter.012, 1
  %exitcond = icmp eq i8 %19, 50
  %tmp24 = lshr i64 %7, 28
  %tmp25 = trunc i64 %tmp24 to i32
  %tmp26 = add i32 %tmp21, %tmp25
  %tmp29 = lshr i64 %10, 28
  %tmp30 = trunc i64 %tmp29 to i32
  %tmp31 = sub i32 %tmp26, %tmp30
  %tmp40 = add i32 %tmp39, %15
  br i1 %exitcond, label %bb4, label %bb2

bb4:                                              ; preds = %bb2
  %20 = icmp ult i8 %18, 50
  %21 = zext i1 %20 to i8
  %22 = zext i1 %20 to i32
  %23 = add nsw i32 %22, %count.014
  volatile store i8 %21, i8* %scevgep, align 1
  %24 = add nsw i32 %i.015, 1
  %exitcond19 = icmp eq i32 %24, 64
  br i1 %exitcond19, label %bb6, label %bb1

bb6:                                              ; preds = %bb4
  %indvar.next = add i32 %indvar, 1
  %exitcond33 = icmp eq i32 %indvar.next, %tmp32
  br i1 %exitcond33, label %bb7.bb8_crit_edge, label %bb5.preheader

bb5.preheader:                                    ; preds = %bb6, %bb5.preheader.lr.ph
  %indvar = phi i32 [ 0, %bb5.preheader.lr.ph ], [ %indvar.next, %bb6 ]
  %count.116 = phi i32 [ 0, %bb5.preheader.lr.ph ], [ %23, %bb6 ]
  %tmp34 = add i32 %1, %indvar
  %tmp36 = shl i32 %indvar, 23
  %tmp39 = add i32 %tmp38, %tmp36
  br label %bb1

bb7.bb8_crit_edge:                                ; preds = %bb6
  %phitmp = inttoptr i32 %23 to i8*
  br label %bb8

bb8:                                              ; preds = %bb7.bb8_crit_edge, %entry
  %count.1.lcssa = phi i8* [ %phitmp, %bb7.bb8_crit_edge ], [ null, %entry ]
  call void @__legup_preserve_value(i8* %count.1.lcssa), !TYPE !0
  ret i8* %count.1.lcssa
}

define internal fastcc void @legup_pthreadcall_mandelbrot(i8* nocapture %threadarg, i32* nocapture %threadID, i32 %threadIDValue) noinline {
  store i32 %threadIDValue, i32* %threadID, align 4
  %1 = bitcast i8* %threadarg to i32*
  %2 = load i32* %1, align 4
  %3 = getelementptr inbounds i8* %threadarg, i32 4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 4
  %6 = icmp slt i32 %2, %5
  br i1 %6, label %bb5.preheader.lr.ph.i, label %mandelbrot.exit

bb5.preheader.lr.ph.i:                            ; preds = %0
  %tmp32.i = sub i32 %5, %2
  %tmp37.i = shl i32 %2, 23
  %tmp38.i = add i32 %tmp37.i, -268435456
  br label %bb5.preheader.i

bb1.i:                                            ; preds = %bb5.preheader.i, %bb4.i
  %i.015.i = phi i32 [ 0, %bb5.preheader.i ], [ %25, %bb4.i ]
  %count.014.i = phi i32 [ %count.116.i, %bb5.preheader.i ], [ %24, %bb4.i ]
  %scevgep.i = getelementptr [64 x [64 x i8]]* @img, i32 0, i32 %i.015.i, i32 %tmp34.i
  %tmp20.i = mul i32 %i.015.i, 12582912
  %tmp21.i = add i32 %tmp20.i, -536870912
  br label %bb2.i

bb2.i:                                            ; preds = %bb2.i, %bb1.i
  %fiter.013.i = phi i8 [ 0, %bb1.i ], [ %19, %bb2.i ]
  %iter.012.i = phi i8 [ 0, %bb1.i ], [ %20, %bb2.i ]
  %y.011.i = phi i32 [ 0, %bb1.i ], [ %tmp40.i, %bb2.i ]
  %x.010.i = phi i32 [ 0, %bb1.i ], [ %tmp31.i, %bb2.i ]
  call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0)) nounwind
  %7 = sext i32 %x.010.i to i64
  %8 = mul nsw i64 %7, %7
  %9 = ashr i64 %8, 28
  %10 = sext i32 %y.011.i to i64
  %11 = mul nsw i64 %10, %10
  %12 = ashr i64 %11, 28
  %13 = add nsw i64 %12, %9
  %14 = mul nsw i64 %10, %7
  %15 = lshr i64 %14, 27
  %.tr.i = trunc i64 %15 to i32
  %16 = and i32 %.tr.i, -2
  %17 = icmp slt i64 %13, 1073741825
  %18 = zext i1 %17 to i8
  %19 = add i8 %18, %fiter.013.i
  %20 = add i8 %iter.012.i, 1
  %exitcond.i = icmp eq i8 %20, 50
  %tmp24.i = lshr i64 %8, 28
  %tmp25.i = trunc i64 %tmp24.i to i32
  %tmp26.i = add i32 %tmp21.i, %tmp25.i
  %tmp29.i = lshr i64 %11, 28
  %tmp30.i = trunc i64 %tmp29.i to i32
  %tmp31.i = sub i32 %tmp26.i, %tmp30.i
  %tmp40.i = add i32 %tmp39.i, %16
  br i1 %exitcond.i, label %bb4.i, label %bb2.i

bb4.i:                                            ; preds = %bb2.i
  %21 = icmp ult i8 %19, 50
  %22 = zext i1 %21 to i8
  %23 = zext i1 %21 to i32
  %24 = add nsw i32 %23, %count.014.i
  volatile store i8 %22, i8* %scevgep.i, align 1
  %25 = add nsw i32 %i.015.i, 1
  %exitcond19.i = icmp eq i32 %25, 64
  br i1 %exitcond19.i, label %bb6.i, label %bb1.i

bb6.i:                                            ; preds = %bb4.i
  %indvar.next.i = add i32 %indvar.i, 1
  %exitcond33.i = icmp eq i32 %indvar.next.i, %tmp32.i
  br i1 %exitcond33.i, label %bb7.bb8_crit_edge.i, label %bb5.preheader.i

bb5.preheader.i:                                  ; preds = %bb6.i, %bb5.preheader.lr.ph.i
  %indvar.i = phi i32 [ 0, %bb5.preheader.lr.ph.i ], [ %indvar.next.i, %bb6.i ]
  %count.116.i = phi i32 [ 0, %bb5.preheader.lr.ph.i ], [ %24, %bb6.i ]
  %tmp34.i = add i32 %2, %indvar.i
  %tmp36.i = shl i32 %indvar.i, 23
  %tmp39.i = add i32 %tmp38.i, %tmp36.i
  br label %bb1.i

bb7.bb8_crit_edge.i:                              ; preds = %bb6.i
  %phitmp.i = inttoptr i32 %24 to i8*
  br label %mandelbrot.exit

mandelbrot.exit:                                  ; preds = %bb7.bb8_crit_edge.i, %0
  %count.1.lcssa.i = phi i8* [ %phitmp.i, %bb7.bb8_crit_edge.i ], [ null, %0 ]
  call void @__legup_preserve_value(i8* %count.1.lcssa.i), !TYPE !0
  ret void
}

!0 = metadata !{metadata !"legup_wrapper_pthreadcall"}
!1 = metadata !{metadata !"mandelbrot"}
!2 = metadata !{metadata !"1"}
!3 = metadata !{metadata !"0"}
!4 = metadata !{metadata !"2"}
!5 = metadata !{metadata !"3"}
!6 = metadata !{metadata !"legup_wrapper_pthreadpoll"}
!7 = metadata !{metadata !"pthread_function_pthreadpoll"}
