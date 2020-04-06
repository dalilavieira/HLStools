; ModuleID = 'mandelbrot.prelto.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"%d + %d = %d\0A\00"

define void @sum_vector(i32* nocapture %a, i32* nocapture %b, i32* nocapture %c, i32 %n) nounwind {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %0
  %i.01 = phi i32 [ %5, %.lr.ph ], [ 0, %0 ]
  %scevgep = getelementptr i32* %a, i32 %i.01
  %scevgep2 = getelementptr i32* %b, i32 %i.01
  %scevgep3 = getelementptr i32* %c, i32 %i.01
  %2 = load i32* %scevgep, align 4, !tbaa !0
  %3 = load i32* %scevgep2, align 4, !tbaa !0
  %4 = add nsw i32 %3, %2
  store i32 %4, i32* %scevgep3, align 4, !tbaa !0
  %5 = add nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %5, %n
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %0
  ret void
}

define i32 @main() nounwind {
  %1 = alloca [100 x i32], align 4
  %2 = alloca [100 x i32], align 4
  %3 = alloca [100 x i32], align 4
  br label %4

; <label>:4                                       ; preds = %4, %0
  %5 = phi i32 [ 0, %0 ], [ %6, %4 ]
  %tmp13 = sub i32 100, %5
  %scevgep14 = getelementptr [100 x i32]* %1, i32 0, i32 %5
  %scevgep15 = getelementptr [100 x i32]* %2, i32 0, i32 %5
  %scevgep16 = getelementptr [100 x i32]* %3, i32 0, i32 %5
  store i32 %5, i32* %scevgep14, align 4, !tbaa !0
  store i32 %tmp13, i32* %scevgep15, align 4, !tbaa !0
  store i32 0, i32* %scevgep16, align 4, !tbaa !0
  %6 = add nsw i32 %5, 1
  %exitcond12 = icmp eq i32 %6, 100
  br i1 %exitcond12, label %.lr.ph.i, label %4

.lr.ph.i:                                         ; preds = %.lr.ph.i, %4
  %i.01.i = phi i32 [ %10, %.lr.ph.i ], [ 0, %4 ]
  %scevgep3.i = getelementptr [100 x i32]* %3, i32 0, i32 %i.01.i
  %scevgep2.i = getelementptr [100 x i32]* %2, i32 0, i32 %i.01.i
  %scevgep.i = getelementptr [100 x i32]* %1, i32 0, i32 %i.01.i
  %7 = load i32* %scevgep.i, align 4, !tbaa !0
  %8 = load i32* %scevgep2.i, align 4, !tbaa !0
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* %scevgep3.i, align 4, !tbaa !0
  %10 = add nsw i32 %i.01.i, 1
  %exitcond8 = icmp eq i32 %10, 100
  br i1 %exitcond8, label %sum_vector.exit, label %.lr.ph.i

sum_vector.exit:                                  ; preds = %sum_vector.exit, %.lr.ph.i
  %i.14 = phi i32 [ %15, %sum_vector.exit ], [ 0, %.lr.ph.i ]
  %scevgep = getelementptr [100 x i32]* %1, i32 0, i32 %i.14
  %scevgep6 = getelementptr [100 x i32]* %2, i32 0, i32 %i.14
  %scevgep7 = getelementptr [100 x i32]* %3, i32 0, i32 %i.14
  %11 = load i32* %scevgep, align 4, !tbaa !0
  %12 = load i32* %scevgep6, align 4, !tbaa !0
  %13 = load i32* %scevgep7, align 4, !tbaa !0
  %14 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str, i32 0, i32 0), i32 %11, i32 %12, i32 %13) nounwind
  %15 = add nsw i32 %i.14, 1
  %exitcond = icmp eq i32 %15, 100
  br i1 %exitcond, label %16, label %sum_vector.exit

; <label>:16                                      ; preds = %sum_vector.exit
  ret i32 0
}

declare i32 @printf(i8*, ...)

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA", null}
