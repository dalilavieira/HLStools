; ModuleID = 'mandelbrot.prelto.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

%struct.thread_data = type { i32, i32 }
%union.pthread_attr_t = type { i32, [32 x i8] }

@.str = private unnamed_addr constant [5 x i8] c"loop\00"
@img = common global [64 x [64 x i8]] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [11 x i8] c"Count: %d\0A\00"
@.str2 = private unnamed_addr constant [6 x i8] c"PASS\0A\00"
@.str3 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00"

define noalias i8* @mandelbrot(i8* nocapture %threadarg) noreturn nounwind {
  %1 = bitcast i8* %threadarg to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %3 = getelementptr inbounds i8* %threadarg, i32 4
  %4 = bitcast i8* %3 to i32*
  %5 = load i32* %4, align 4, !tbaa !0
  %6 = icmp slt i32 %2, %5
  br i1 %6, label %.preheader.lr.ph, label %42

.preheader.lr.ph:                                 ; preds = %0
  %tmp12 = sub i32 %5, %2
  %tmp17 = shl i32 %2, 21
  br label %.preheader

.preheader:                                       ; preds = %41, %.preheader.lr.ph
  %indvar = phi i32 [ 0, %.preheader.lr.ph ], [ %indvar.next, %41 ]
  %count.07 = phi i32 [ 0, %.preheader.lr.ph ], [ %39, %41 ]
  %tmp14 = add i32 %2, %indvar
  %tmp16 = shl i32 %indvar, 21
  %tmp18 = add i32 %tmp17, %tmp16
  %7 = sdiv i32 %tmp18, 64
  %8 = shl i32 %7, 8
  %9 = add nsw i32 %8, -268435456
  %10 = zext i32 %9 to i64
  br label %11

; <label>:11                                      ; preds = %36, %.preheader
  %i.06 = phi i32 [ 0, %.preheader ], [ %40, %36 ]
  %count.15 = phi i32 [ %count.07, %.preheader ], [ %39, %36 ]
  %scevgep = getelementptr [64 x [64 x i8]]* @img, i32 0, i32 %i.06, i32 %tmp14
  %tmp11 = mul i32 %i.06, 3145728
  %12 = sdiv i32 %tmp11, 64
  %13 = shl i32 %12, 8
  %14 = add nsw i32 %13, -536870912
  %15 = zext i32 %14 to i64
  br label %16

; <label>:16                                      ; preds = %16, %11
  %fiter.04 = phi i32 [ 0, %11 ], [ %phitmp, %16 ]
  %iter.03 = phi i8 [ 0, %11 ], [ %35, %16 ]
  %y.02 = phi i32 [ 0, %11 ], [ %31, %16 ]
  %x.01 = phi i32 [ 0, %11 ], [ %26, %16 ]
  tail call void @__legup_label(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0)) nounwind
  %17 = sext i32 %x.01 to i64
  %18 = mul nsw i64 %17, %17
  %19 = ashr i64 %18, 28
  %20 = sext i32 %y.02 to i64
  %21 = mul nsw i64 %20, %20
  %22 = ashr i64 %21, 28
  %23 = add nsw i64 %22, %19
  %24 = add i64 %19, %15
  %25 = sub i64 %24, %22
  %26 = trunc i64 %25 to i32
  %27 = mul nsw i64 %20, %17
  %28 = lshr i64 %27, 27
  %29 = and i64 %28, 4294967294
  %30 = add nsw i64 %29, %10
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i64 %23, 1073741825
  %33 = zext i1 %32 to i32
  %34 = add nsw i32 %33, %fiter.04
  %35 = add i8 %iter.03, 1
  %phitmp = and i32 %34, 255
  %exitcond = icmp eq i8 %35, 50
  br i1 %exitcond, label %36, label %16

; <label>:36                                      ; preds = %16
  %not. = icmp ult i32 %phitmp, 50
  %37 = zext i1 %not. to i8
  %38 = zext i1 %not. to i32
  %39 = add nsw i32 %38, %count.15
  volatile store i8 %37, i8* %scevgep, align 1, !tbaa !1
  %40 = add nsw i32 %i.06, 1
  %exitcond10 = icmp eq i32 %40, 64
  br i1 %exitcond10, label %41, label %11

; <label>:41                                      ; preds = %36
  %indvar.next = add i32 %indvar, 1
  %exitcond13 = icmp eq i32 %indvar.next, %tmp12
  br i1 %exitcond13, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %41
  %phitmp9 = inttoptr i32 %39 to i8*
  br label %42

; <label>:42                                      ; preds = %._crit_edge, %0
  %count.0.lcssa = phi i8* [ %phitmp9, %._crit_edge ], [ null, %0 ]
  tail call void @pthread_exit(i8* %count.0.lcssa) noreturn nounwind
  unreachable
}

declare void @__legup_label(i8*)

declare void @pthread_exit(i8*) noreturn

define i32 @main() nounwind {
.preheader5:
  %count = alloca [4 x i32], align 4
  %threads = alloca [4 x i32], align 4
  %data = alloca [4 x %struct.thread_data], align 4
  %scevgep1516 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 0, i32 0
  store i32 0, i32* %scevgep1516, align 4, !tbaa !0
  %scevgep17 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 0, i32 1
  store i32 16, i32* %scevgep17, align 4, !tbaa !0
  %scevgep1516.1 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 1, i32 0
  store i32 16, i32* %scevgep1516.1, align 4, !tbaa !0
  %scevgep17.1 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 1, i32 1
  store i32 32, i32* %scevgep17.1, align 4, !tbaa !0
  %scevgep1516.2 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 2, i32 0
  store i32 32, i32* %scevgep1516.2, align 4, !tbaa !0
  %scevgep17.2 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 2, i32 1
  store i32 48, i32* %scevgep17.2, align 4, !tbaa !0
  %scevgep1516.3 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 3, i32 0
  store i32 48, i32* %scevgep1516.3, align 4, !tbaa !0
  %scevgep17.3 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 3, i32 1
  store i32 64, i32* %scevgep17.3, align 4, !tbaa !0
  %scevgep11 = getelementptr [4 x i32]* %threads, i32 0, i32 0
  %scevgep1213 = bitcast [4 x %struct.thread_data]* %data to i8*
  %0 = call i32 @pthread_create(i32* %scevgep11, %union.pthread_attr_t* null, i8* (i8*)* @mandelbrot, i8* %scevgep1213) nounwind
  %scevgep11.1 = getelementptr [4 x i32]* %threads, i32 0, i32 1
  %scevgep12.1 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 1
  %scevgep1213.1 = bitcast %struct.thread_data* %scevgep12.1 to i8*
  %1 = call i32 @pthread_create(i32* %scevgep11.1, %union.pthread_attr_t* null, i8* (i8*)* @mandelbrot, i8* %scevgep1213.1) nounwind
  %scevgep11.2 = getelementptr [4 x i32]* %threads, i32 0, i32 2
  %scevgep12.2 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 2
  %scevgep1213.2 = bitcast %struct.thread_data* %scevgep12.2 to i8*
  %2 = call i32 @pthread_create(i32* %scevgep11.2, %union.pthread_attr_t* null, i8* (i8*)* @mandelbrot, i8* %scevgep1213.2) nounwind
  %scevgep11.3 = getelementptr [4 x i32]* %threads, i32 0, i32 3
  %scevgep12.3 = getelementptr [4 x %struct.thread_data]* %data, i32 0, i32 3
  %scevgep1213.3 = bitcast %struct.thread_data* %scevgep12.3 to i8*
  %3 = call i32 @pthread_create(i32* %scevgep11.3, %union.pthread_attr_t* null, i8* (i8*)* @mandelbrot, i8* %scevgep1213.3) nounwind
  %scevgep910 = bitcast [4 x i32]* %count to i8**
  %4 = load i32* %scevgep11, align 4, !tbaa !3
  %5 = call i32 @pthread_join(i32 %4, i8** %scevgep910) nounwind
  %scevgep9.1 = getelementptr [4 x i32]* %count, i32 0, i32 1
  %scevgep910.1 = bitcast i32* %scevgep9.1 to i8**
  %6 = load i32* %scevgep11.1, align 4, !tbaa !3
  %7 = call i32 @pthread_join(i32 %6, i8** %scevgep910.1) nounwind
  %scevgep9.2 = getelementptr [4 x i32]* %count, i32 0, i32 2
  %scevgep910.2 = bitcast i32* %scevgep9.2 to i8**
  %8 = load i32* %scevgep11.2, align 4, !tbaa !3
  %9 = call i32 @pthread_join(i32 %8, i8** %scevgep910.2) nounwind
  %scevgep9.3 = getelementptr [4 x i32]* %count, i32 0, i32 3
  %scevgep910.3 = bitcast i32* %scevgep9.3 to i8**
  %10 = load i32* %scevgep11.3, align 4, !tbaa !3
  %11 = call i32 @pthread_join(i32 %10, i8** %scevgep910.3) nounwind
  %scevgep = getelementptr [4 x i32]* %count, i32 0, i32 0
  %12 = load i32* %scevgep, align 4, !tbaa !0
  %13 = load i32* %scevgep9.1, align 4, !tbaa !0
  %14 = add nsw i32 %13, %12
  %15 = load i32* %scevgep9.2, align 4, !tbaa !0
  %16 = add nsw i32 %15, %14
  %17 = load i32* %scevgep9.3, align 4, !tbaa !0
  %18 = add nsw i32 %17, %16
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0), i32 %18) nounwind
  %20 = icmp eq i32 %18, 2989
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %.preheader5
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) nounwind
  br label %25

; <label>:23                                      ; preds = %.preheader5
  %24 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind
  br label %25

; <label>:25                                      ; preds = %23, %21
  ret i32 0
}

declare i32 @pthread_create(i32*, %union.pthread_attr_t*, i8* (i8*)*, i8*) nounwind

declare i32 @pthread_join(i32, i8**)

declare i32 @printf(i8*, ...)

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA", null}
!3 = metadata !{metadata !"long", metadata !1}
