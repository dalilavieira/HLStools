; ModuleID = 'mandelbrot.prelto.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-f128:128:128-n8:16:32"
target triple = "i386-pc-linux-gnu"

%struct.thread_data = type { i32, i32 }
%union.pthread_attr_t = type { i32, [8 x i32] }

@.str = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@img = internal unnamed_addr global [64 x [64 x i8]] zeroinitializer, align 32
@legup_count_mandelbrot = global i32 0

define i32 @main() nounwind {
bb3.3:
  %count = alloca [4 x i32], align 4
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
  %legup_count_mandelbrot_loadedValue = load i32* @legup_count_mandelbrot
  %0 = add i32 %legup_count_mandelbrot_loadedValue, 1
  store i32 %0, i32* @legup_count_mandelbrot
  call void @legup_pthreadcall_mandelbrot(i8* %scevgep2728, i32* %scevgep29, i32 %legup_count_mandelbrot_loadedValue), !TYPE !0, !PTHREADNAME !1, !NUMTHREADS !2, !THREADID !3, !FUNCTIONID !3
  %scevgep27.1 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 1
  %scevgep2728.1 = bitcast %struct.thread_data* %scevgep27.1 to i8*
  %scevgep29.1 = getelementptr [4 x i32]* %threads, i32 0, i32 1
  %legup_count_mandelbrot_loadedValue1 = load i32* @legup_count_mandelbrot
  %1 = add i32 %legup_count_mandelbrot_loadedValue1, 1
  store i32 %1, i32* @legup_count_mandelbrot
  call void @legup_pthreadcall_mandelbrot(i8* %scevgep2728.1, i32* %scevgep29.1, i32 %legup_count_mandelbrot_loadedValue1), !TYPE !0, !PTHREADNAME !1, !NUMTHREADS !2, !THREADID !2, !FUNCTIONID !3
  %scevgep27.2 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 2
  %scevgep2728.2 = bitcast %struct.thread_data* %scevgep27.2 to i8*
  %scevgep29.2 = getelementptr [4 x i32]* %threads, i32 0, i32 2
  %legup_count_mandelbrot_loadedValue2 = load i32* @legup_count_mandelbrot
  %2 = add i32 %legup_count_mandelbrot_loadedValue2, 1
  store i32 %2, i32* @legup_count_mandelbrot
  call void @legup_pthreadcall_mandelbrot(i8* %scevgep2728.2, i32* %scevgep29.2, i32 %legup_count_mandelbrot_loadedValue2), !TYPE !0, !PTHREADNAME !1, !NUMTHREADS !2, !THREADID !4, !FUNCTIONID !3
  %scevgep27.3 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 3
  %scevgep2728.3 = bitcast %struct.thread_data* %scevgep27.3 to i8*
  %scevgep29.3 = getelementptr [4 x i32]* %threads, i32 0, i32 3
  %legup_count_mandelbrot_loadedValue3 = load i32* @legup_count_mandelbrot
  %3 = add i32 %legup_count_mandelbrot_loadedValue3, 1
  store i32 %3, i32* @legup_count_mandelbrot
  call void @legup_pthreadcall_mandelbrot(i8* %scevgep2728.3, i32* %scevgep29.3, i32 %legup_count_mandelbrot_loadedValue3), !TYPE !0, !PTHREADNAME !1, !NUMTHREADS !2, !THREADID !5, !FUNCTIONID !3
  %scevgep2425 = bitcast [4 x i32]* %count to i8**
  %4 = load i32* %scevgep29, align 4
  %5 = call i8* @legup_pthreadpoll(i32 %4), !TYPE !6, !NUMTHREADS !2
  store i8* %5, i8** %scevgep2425
  %scevgep24.1 = getelementptr [4 x i32]* %count, i32 0, i32 1
  %scevgep2425.1 = bitcast i32* %scevgep24.1 to i8**
  %6 = load i32* %scevgep29.1, align 4
  %7 = call i8* @legup_pthreadpoll(i32 %6), !TYPE !6, !NUMTHREADS !2
  store i8* %7, i8** %scevgep2425.1
  %scevgep24.2 = getelementptr [4 x i32]* %count, i32 0, i32 2
  %scevgep2425.2 = bitcast i32* %scevgep24.2 to i8**
  %8 = load i32* %scevgep29.2, align 4
  %9 = call i8* @legup_pthreadpoll(i32 %8), !TYPE !6, !NUMTHREADS !2
  store i8* %9, i8** %scevgep2425.2
  %scevgep24.3 = getelementptr [4 x i32]* %count, i32 0, i32 3
  %scevgep2425.3 = bitcast i32* %scevgep24.3 to i8**
  %10 = load i32* %scevgep29.3, align 4
  %11 = call i8* @legup_pthreadpoll(i32 %10), !TYPE !6, !NUMTHREADS !2
  store i8* %11, i8** %scevgep2425.3
  %scevgep = getelementptr [4 x i32]* %count, i32 0, i32 0
  %12 = load i32* %scevgep, align 4
  %13 = load i32* %scevgep24.1, align 4
  %14 = add nsw i32 %13, %12
  %15 = load i32* %scevgep24.2, align 4
  %16 = add nsw i32 %15, %14
  %17 = load i32* %scevgep24.3, align 4
  %18 = add nsw i32 %17, %16
  %19 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), i32 %18) nounwind
  %20 = icmp eq i32 %18, 2989
  br i1 %20, label %bb15, label %bb16

bb15:                                             ; preds = %bb3.3
  %21 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)) nounwind
  br label %return

bb16:                                             ; preds = %bb3.3
  %22 = call i32 (i8*, ...)* @printf(i8* noalias getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) nounwind
  br label %return

return:                                           ; preds = %bb16, %bb15
  ret i32 undef
}

declare i32 @pthread_create(i32* noalias, %union.pthread_attr_t* noalias, i8* (i8*)*, i8* noalias) nounwind

declare i32 @pthread_join(i32, i8**)

declare i32 @printf(i8* noalias, ...)

declare void @__legup_label(i8*)

declare void @pthread_exit(i8*) noreturn

declare void @__legup_preserve_value(i8*)

define i8* @legup_pthreadpoll(i32 %threadID) noinline {
entry:
  %functionID = lshr i32 %threadID, 16
  switch i32 %functionID, label %0 [
    i32 0, label %0
  ]

exit:                                             ; preds = %0
  %returnVar = phi i8* [ %1, %0 ]
  ret i8* %returnVar

; <label>:0                                       ; preds = %entry, %entry
  %1 = call i8* @mandelbrot(i8* null, i32 %threadID) noinline, !TYPE !7
  br label %exit
}

define internal i8* @mandelbrot(i8* %threadarg, i32 %threadID) alwaysinline {
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

define void @legup_pthreadcall_mandelbrot(i8* %threadarg, i32* %threadID, i32 %threadIDValue) noinline {
  %1 = or i32 0, %threadIDValue
  store i32 %1, i32* %threadID
  %2 = call i8* @mandelbrot(i8* %threadarg, i32 %threadIDValue), !TYPE !8
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
!8 = metadata !{metadata !"pthread_function"}
