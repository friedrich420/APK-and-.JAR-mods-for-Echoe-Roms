.class public Lcom/android/launcher2/AnimationLayer$Anim;
.super Ljava/lang/Object;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Anim"
.end annotation


# static fields
.field static final DEFAULT:I = 0x0

.field static final SCROLLABLE:I = 0x1


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field mAnimGroup:I

.field mAnimIcon:Landroid/widget/ImageView;

.field private mAnimation:Landroid/animation/Animator;

.field mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mClipRect:Landroid/graphics/Rect;

.field mClippingEnabled:Z

.field public mDarken:F

.field mFrom:[I

.field private mIsCompleted:Z

.field public mLinkedItem:Lcom/android/launcher2/BaseItem;

.field private mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

.field private mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public mPaint:Landroid/graphics/Paint;

.field private mShadowFadeStarted:Z

.field mTo:[I

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AnimationLayer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 916
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 906
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 907
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    .line 914
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    .line 1005
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim$4;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    .line 1024
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim$5;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1194
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    .line 917
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/AnimationLayer$Anim;

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->updateView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/AnimationLayer$Anim;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/AnimationLayer$Anim;

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/AnimationLayer$Anim;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p1, "x1"    # Z

    .prologue
    .line 894
    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    return p1
.end method

.method private updateView()V
    .locals 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->onDrop()V

    .line 1022
    :cond_1
    return-void
.end method


# virtual methods
.method public addAlphaAnimator(FFZ)V
    .locals 3
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "markCompleteOnEnd"    # Z

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 981
    .local v0, "a":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher2/AnimationLayer$Anim$2;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;FF)V

    .line 990
    .local v2, "ul":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    new-instance v1, Lcom/android/launcher2/AnimationLayer$Anim$3;

    invoke-direct {v1, p0, v0, v2, p3}, Lcom/android/launcher2/AnimationLayer$Anim$3;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 1001
    .local v1, "l":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1002
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1003
    return-void
.end method

.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V
    .locals 2
    .param p1, "ul"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "markCompleteOnEnd"    # Z

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 963
    .local v0, "a":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/launcher2/AnimationLayer$Anim$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/launcher2/AnimationLayer$Anim$1;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 974
    .local v1, "l":Landroid/animation/AnimatorListenerAdapter;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 975
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 976
    return-void
.end method

.method cancel()V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    .line 1161
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1212
    :cond_0
    return-void
.end method

.method public enableClipping()V
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 945
    return-void
.end method

.method public getAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrom()[I
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTo()[I
    .locals 3

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 1179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCompleted()Z
    .locals 1

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    return v0
.end method

.method public markCompleted()V
    .locals 2

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 1199
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    .line 1200
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 920
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 921
    iput v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    .line 922
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    .line 923
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 924
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 925
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 926
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 927
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 928
    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mIsCompleted:Z

    .line 929
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 931
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v0, v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 933
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 936
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 937
    iput-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 938
    return-void
.end method

.method public setFrom([I)V
    .locals 0
    .param p1, "f"    # [I

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 1165
    return-void
.end method

.method public setTo([I)V
    .locals 0
    .param p1, "t"    # [I

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 1169
    return-void
.end method

.method setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "group"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "b"    # Landroid/graphics/Bitmap;
    .param p5, "animIcon"    # Landroid/widget/ImageView;

    .prologue
    .line 948
    iput p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    .line 949
    if-eqz p2, :cond_0

    .line 950
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    .line 952
    :cond_0
    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 953
    iput-object p5, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 954
    iput-object p4, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 956
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    .line 957
    return-void

    .line 956
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "animIcon"    # Landroid/widget/ImageView;
    .param p4, "from"    # [I
    .param p5, "to"    # [I
    .param p6, "duration"    # I
    .param p7, "fadeInShadow"    # Z

    .prologue
    .line 1058
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 1060
    iput-object p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 1061
    iput-object p2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 1062
    iput-object p4, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 1063
    iput-object p5, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 1064
    if-nez p7, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z

    .line 1066
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    .line 1067
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1068
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mMoveAnimListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1069
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    int-to-long v2, p6

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1070
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1071
    return-void

    .line 1064
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1066
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "animIcon"    # Landroid/widget/ImageView;
    .param p4, "from"    # [I
    .param p5, "to"    # [I

    .prologue
    .line 1075
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1076
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    .line 1077
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 1078
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    .line 1079
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 1080
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v8

    .line 1084
    .local v8, "_to":[I
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x0

    aget v3, p4, v3

    sub-int/2addr v2, v3

    int-to-float v6, v2

    .line 1085
    .local v6, "dx":F
    const/4 v2, 0x1

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, p4, v3

    sub-int/2addr v2, v3

    int-to-float v7, v2

    .line 1087
    .local v7, "dy":F
    mul-float v2, v6, v6

    mul-float v3, v7, v7

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v13, v2

    .line 1088
    .local v13, "kDistance":F
    const/16 v19, 0x5a

    .line 1089
    .local v19, "kFadeOutDuration":I
    const/16 v15, 0x5a

    .line 1090
    .local v15, "kFadeInDuration":I
    const v2, 0x3da3d70a    # 0.08f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v18, v2, v3

    .line 1091
    .local v18, "kFadeOutDistance":F
    const v2, 0x3df5c28f    # 0.12f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v14, v2, v3

    .line 1092
    .local v14, "kFadeInDistance":F
    const v21, 0x3dcccccd    # 0.1f

    .line 1093
    .local v21, "kFadeOutStartFactor":F
    const v2, 0x3dcccccd    # 0.1f

    div-float v3, v18, v13

    add-float v20, v2, v3

    .line 1095
    .local v20, "kFadeOutEndFactor":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v20, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v22

    .line 1096
    .local v22, "moveAnim1":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x5a

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1097
    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$6;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim$6;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;[IFF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1109
    const/high16 v16, 0x3f800000    # 1.0f

    .line 1110
    .local v16, "kFadeInEndFactor":F
    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v14, v13

    sub-float v17, v2, v3

    .line 1112
    .local v17, "kFadeInStartFactor":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v17, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v23

    .line 1113
    .local v23, "moveAnim2":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x5a

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1114
    new-instance v2, Lcom/android/launcher2/AnimationLayer$Anim$7;

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim$7;-><init>(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;[IFF)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1126
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 1127
    .local v11, "fadeOutAnim":Landroid/animation/ValueAnimator;
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 1130
    .local v9, "fadeInAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x5a

    invoke-virtual {v11, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1131
    const-wide/16 v2, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1132
    const-wide/16 v2, 0x5a

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1134
    move-object/from16 v0, v22

    invoke-static {v11, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 1135
    .local v12, "fadeOutSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v10

    .line 1138
    .local v10, "fadeInSet":Landroid/animation/AnimatorSet;
    invoke-static {v12, v10}, Lcom/android/launcher2/AnimationLayer;->createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    .line 1139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 1140
    return-void

    .line 1126
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
    .end array-data

    .line 1127
    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method update([IIZ)V
    .locals 4
    .param p1, "to"    # [I
    .param p2, "duration"    # I
    .param p3, "clip"    # Z

    .prologue
    .line 1143
    iput-boolean p3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    .line 1144
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    .line 1145
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 1146
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mFrom:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 1147
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimation:Landroid/animation/Animator;

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1149
    .local v0, "a":Landroid/animation/ValueAnimator;
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1150
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 1152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1155
    .end local v0    # "a":Landroid/animation/ValueAnimator;
    :cond_0
    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "b_"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    .line 1220
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1221
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1222
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1223
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1224
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 1225
    return-void
.end method
