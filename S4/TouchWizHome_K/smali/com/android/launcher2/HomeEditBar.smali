.class public Lcom/android/launcher2/HomeEditBar;
.super Landroid/widget/LinearLayout;
.source "HomeEditBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeEditBar$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeEditBar"

.field public static isfolderCreated:Z


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAddToPersonal:Landroid/widget/TextView;

.field private mAddToPersonalContainer:Landroid/widget/FrameLayout;

.field private mAddToPersonalDrawable:Landroid/graphics/drawable/Drawable;

.field private mAppInfo:Landroid/widget/TextView;

.field private mAppInfoContainer:Landroid/widget/FrameLayout;

.field private mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

.field private mCancel:Landroid/widget/TextView;

.field private mCancelContainer:Landroid/widget/FrameLayout;

.field private mCancelDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentAnimatorRes:I

.field private mDelete:Landroid/widget/TextView;

.field private mDeleteContainer:Landroid/widget/FrameLayout;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisable:Landroid/widget/TextView;

.field private mDisableContainer:Landroid/widget/FrameLayout;

.field private mDisableDrawable:Landroid/graphics/drawable/Drawable;

.field private mDropped:Z

.field private mEntered:Z

.field private mHideAnimatorRes:I

.field private mNewFolder:Landroid/widget/TextView;

.field private mNewFolderContainer:Landroid/widget/FrameLayout;

.field private mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPosition:I

.field private mShowAnimatorRes:I

.field private mShowPosted:Z

.field private mUninstall:Landroid/widget/TextView;

.field private mUninstallContainer:Landroid/widget/FrameLayout;

.field private mUninstallDrawable:Landroid/graphics/drawable/Drawable;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HomeEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 110
    iput v3, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    .line 113
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 219
    iput-boolean v3, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    .line 128
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x11

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeEditBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeEditBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeEditBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeEditBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeEditBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeEditBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/HomeEditBar;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/HomeEditBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/HomeEditBar;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    return p1
.end method

.method private addToPersonal(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 616
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 657
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 618
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeEditBar;->doAddToPersonal(Lcom/android/launcher2/BaseItem;)V

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 620
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 621
    .local v6, "home":Lcom/android/launcher2/HomeView;
    if-eqz v6, :cond_1

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 623
    .local v7, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v7, :cond_1

    .line 624
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 626
    .end local v7    # "ws":Lcom/android/launcher2/Workspace;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 627
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 634
    .end local v6    # "home":Lcom/android/launcher2/HomeView;
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 635
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 638
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 640
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 644
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 646
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 647
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 648
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 172
    .local v3, "infoOk":Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    :cond_0
    :goto_1
    :pswitch_0
    return v3

    .line 171
    .end local v3    # "infoOk":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 174
    .restart local v3    # "infoOk":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 175
    if-nez v3, :cond_0

    .line 176
    new-instance v0, Lcom/android/launcher2/HomeEditBar$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeEditBar$1;-><init>(Lcom/android/launcher2/HomeEditBar;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 186
    :pswitch_2
    if-eqz v3, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 188
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 190
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 197
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 198
    .local v11, "pkgName":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 199
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 200
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 202
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10800000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 205
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_1

    .line 212
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pkgName":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private cancel(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 427
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 468
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 429
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 431
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 432
    .local v6, "home":Lcom/android/launcher2/HomeView;
    if-eqz v6, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 434
    .local v7, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v7, :cond_1

    .line 435
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 437
    .end local v7    # "ws":Lcom/android/launcher2/Workspace;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 439
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 444
    .end local v6    # "home":Lcom/android/launcher2/HomeView;
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 445
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 449
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 451
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 456
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 458
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 459
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 461
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 17
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 423
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 367
    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 368
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_3

    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->onDelete()V

    .line 379
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 381
    .local v12, "now":J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 382
    .local v9, "date":Ljava/util/Date;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v14, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 383
    .local v14, "sdfNow":Ljava/text/SimpleDateFormat;
    invoke-virtual {v14, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 384
    .local v15, "strNow":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/LauncherApplication;

    .line 385
    .local v8, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 387
    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 388
    .local v11, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v2, "homeEditBarDelete"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    .end local v8    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v9    # "date":Ljava/util/Date;
    .end local v11    # "prefs":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "now":J
    .end local v14    # "sdfNow":Ljava/text/SimpleDateFormat;
    .end local v15    # "strNow":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 394
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    const/16 v2, 0x6457

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 371
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v10, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 372
    .local v10, "home":Lcom/android/launcher2/HomeView;
    if-eqz v10, :cond_1

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v16

    .line 374
    .local v16, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v16, :cond_1

    .line 375
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_1

    .line 399
    .end local v10    # "home":Lcom/android/launcher2/HomeView;
    .end local v16    # "ws":Lcom/android/launcher2/Workspace;
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_0

    .line 404
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v2, :cond_0

    .line 405
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_0

    .line 411
    :pswitch_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 414
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 416
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    const/16 v2, 0x5695

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private disable(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 472
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 511
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 474
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeEditBar;->showDisableConfirmationDialog(Lcom/android/launcher2/BaseItem;)V

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 476
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 477
    .local v6, "home":Lcom/android/launcher2/HomeView;
    if-eqz v6, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 479
    .local v7, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v7, :cond_1

    .line 480
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 482
    .end local v7    # "ws":Lcom/android/launcher2/Workspace;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 483
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 488
    .end local v6    # "home":Lcom/android/launcher2/HomeView;
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 489
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 492
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 494
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 499
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 500
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 501
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 502
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 504
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private doAddToPersonal(Lcom/android/launcher2/BaseItem;)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 722
    if-nez p1, :cond_0

    .line 745
    :goto_0
    return-void

    .line 724
    :cond_0
    const-string v0, "android.intent.action.LAUNCH_PERSONA_SHORTCUT"

    .line 726
    .local v0, "PERSONA_SHORTCUT":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "userId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 728
    .local v4, "userId":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "persona_shortcut://"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 730
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 731
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "package"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v5, "component"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 733
    const-string v5, "label"

    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v5, "iconBitmap"

    iget-object v6, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 735
    const-string v5, "personalId"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 736
    const-string v5, "commandType"

    const-string v6, "createShortcut"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 739
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v3}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 740
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "userId":I
    :catch_0
    move-exception v2

    .line 741
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    const-string v5, "HomeEditBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not call android.os.PersonaManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 742
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v2

    .line 743
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    const-string v5, "HomeEditBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not call getKnoxInfoForApp."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, "all":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 146
    aget-object v1, v0, v2

    .line 147
    if-eqz v1, :cond_1

    .line 150
    :cond_0
    return-object v1

    .line 145
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private newFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 10
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 673
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/android/launcher2/HomePendingItem;

    if-nez v0, :cond_4

    :cond_2
    const/4 v3, 0x1

    .line 680
    .local v3, "canCreateFolder":Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 718
    :cond_3
    :goto_1
    :pswitch_0
    return v3

    .line 673
    .end local v3    # "canCreateFolder":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 682
    .restart local v3    # "canCreateFolder":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 686
    :pswitch_2
    if-eqz v3, :cond_3

    .line 687
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 689
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 690
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 691
    :cond_5
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_6

    .line 692
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 693
    :cond_6
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem()Z

    .line 694
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 695
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 701
    :pswitch_3
    if-eqz v3, :cond_3

    .line 702
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 703
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100087

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 705
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 706
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 712
    :pswitch_4
    if-eqz v3, :cond_3

    .line 713
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_1

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setAnimatorsForOrientation()V
    .locals 2

    .prologue
    .line 1135
    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v0, v1, 0x3

    .line 1136
    .local v0, "barPosition":I
    packed-switch v0, :pswitch_data_0

    .line 1150
    :pswitch_0
    const v1, 0x7f050016

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 1151
    const v1, 0x7f050017

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    .line 1154
    :goto_0
    return-void

    .line 1138
    :pswitch_1
    const v1, 0x7f05000e

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 1139
    const v1, 0x7f05000f

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    .line 1142
    :pswitch_2
    const v1, 0x7f050014

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 1143
    const v1, 0x7f050015

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    .line 1146
    :pswitch_3
    const/high16 v1, 0x7f050000

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 1147
    const v1, 0x7f050001

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    .line 1136
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V
    .locals 4
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "d"    # [Landroid/graphics/drawable/Drawable;
    .param p4, "index"    # I

    .prologue
    .line 1169
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1170
    aput-object p2, p3, p4

    .line 1171
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    const/4 v3, 0x3

    aget-object v3, p3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1173
    :cond_0
    return-void
.end method

.method private setDrawablesForOrientation()V
    .locals 4

    .prologue
    .line 1180
    const/4 v2, 0x4

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 1182
    .local v0, "d":[Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v1, v2, 0x4

    .line 1186
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 1187
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 1188
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 1189
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 1190
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 1191
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 1192
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 1195
    return-void
.end method

.method private setInitialAnimationParameter()V
    .locals 7

    .prologue
    const v6, 0x7f110021

    const v5, 0x7f110023

    const v4, 0x7f110022

    const v3, 0x7f110015

    .line 849
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 850
    .local v0, "dragBar":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    .line 851
    invoke-static {v6, p0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/LinearLayout;)V

    .line 852
    invoke-static {v6, p0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 853
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 855
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 857
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 858
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 859
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 861
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 862
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 863
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 864
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 865
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 867
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 868
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 869
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 870
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 871
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 873
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 874
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 875
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 876
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 877
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 879
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 880
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 881
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 882
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 883
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 885
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 886
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 887
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 888
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 889
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 903
    :cond_5
    return-void
.end method

.method private setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V
    .locals 0
    .param p1, "fl"    # Landroid/widget/FrameLayout;
    .param p2, "tv"    # Landroid/widget/TextView;
    .param p3, "enabled"    # Z
    .param p4, "selected"    # Z
    .param p5, "activated"    # Z

    .prologue
    .line 1214
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1215
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1217
    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 1218
    invoke-virtual {p1, p5}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 1219
    return-void
.end method

.method private showDisableConfirmationDialog(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 990
    sget-object v0, Lcom/android/launcher2/HomeEditBar$3;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 996
    :goto_0
    return-void

    .line 992
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->callDisableDialog(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    .line 990
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private uninstall(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 570
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 612
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 573
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    .line 576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 577
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 578
    .local v6, "home":Lcom/android/launcher2/HomeView;
    if-eqz v6, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 580
    .local v7, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v7, :cond_1

    .line 581
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 583
    .end local v7    # "ws":Lcom/android/launcher2/Workspace;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 584
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 589
    .end local v6    # "home":Lcom/android/launcher2/HomeView;
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 590
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 593
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 595
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 600
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 602
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 603
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 605
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 570
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 17
    .param p1, "workspace"    # Lcom/android/launcher2/Workspace;
    .param p2, "oldState"    # Lcom/android/launcher2/Workspace$State;
    .param p3, "newState"    # Lcom/android/launcher2/Workspace$State;
    .param p4, "item"    # Lcom/android/launcher2/BaseItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p5, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 238
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    .line 240
    const/4 v10, 0x1

    .line 242
    .local v10, "allowFeatureForHelpApp":Z
    sget-object v2, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_13

    if-eqz p4, :cond_13

    .line 243
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    .line 245
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v2, :cond_9

    const/4 v5, 0x1

    .line 246
    .local v5, "canShowInfo":Z
    :goto_0
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_a

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v2, p4

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuAppModel;->canDisableable(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v2, :cond_a

    const/4 v12, 0x1

    .line 247
    .local v12, "canShowDisable":Z
    :goto_1
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_b

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v2, p4

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuAppModel;->canUninstallable(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v2, :cond_b

    const/4 v13, 0x1

    .line 248
    .local v13, "canShowUninstall":Z
    :goto_2
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/FolderItem;

    if-nez v2, :cond_c

    const/16 v16, 0x1

    .line 249
    .local v16, "notAFolder":Z
    :goto_3
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v2, :cond_d

    const/4 v9, 0x1

    .line 250
    .local v9, "isAppItem":Z
    :goto_4
    if-eqz v9, :cond_e

    if-eqz v16, :cond_e

    if-eqz v12, :cond_e

    const/4 v6, 0x1

    .line 251
    .local v6, "canShowDisableContainer":Z
    :goto_5
    if-eqz v9, :cond_f

    if-eqz v16, :cond_f

    if-eqz v13, :cond_f

    const/4 v7, 0x1

    .line 253
    .local v7, "canShowUninstallContainer":Z
    :goto_6
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-nez v2, :cond_10

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/LauncherApplication;->isPossibleAddToPersonal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v8, 0x1

    .line 259
    .local v8, "canAddToPersonal":Z
    :goto_7
    if-eqz v7, :cond_11

    sget-object v2, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v14, 0x1

    .line 262
    .local v14, "isNonDisableItem":Z
    :goto_8
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_2

    .line 263
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "remove_items"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "move_app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    :cond_1
    const/4 v10, 0x0

    .line 277
    :cond_2
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v2, :cond_12

    :cond_3
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-nez v2, :cond_12

    :cond_4
    if-eqz v10, :cond_12

    const/4 v4, 0x1

    .line 284
    .local v4, "canCreateFolder":Z
    :goto_9
    const/4 v10, 0x1

    .line 288
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v15

    .line 290
    .local v15, "maxPages":I
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_6

    .line 291
    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "addapps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "add_widgets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "remove_items"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "create_folder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v3, "move_app"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 296
    :cond_5
    const/4 v10, 0x0

    .line 300
    :cond_6
    const/4 v10, 0x1

    .line 305
    new-instance v2, Lcom/android/launcher2/HomeEditBar$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/HomeEditBar$2;-><init>(Lcom/android/launcher2/HomeEditBar;ZZZZZZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    .line 341
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    .line 345
    .end local v4    # "canCreateFolder":Z
    .end local v5    # "canShowInfo":Z
    .end local v6    # "canShowDisableContainer":Z
    .end local v7    # "canShowUninstallContainer":Z
    .end local v8    # "canAddToPersonal":Z
    .end local v9    # "isAppItem":Z
    .end local v12    # "canShowDisable":Z
    .end local v13    # "canShowUninstall":Z
    .end local v14    # "isNonDisableItem":Z
    .end local v15    # "maxPages":I
    .end local v16    # "notAFolder":Z
    :cond_7
    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    if-eqz v2, :cond_8

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v11

    .line 347
    .local v11, "animator":Landroid/animation/Animator;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 348
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 349
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v11    # "animator":Landroid/animation/Animator;
    :cond_8
    return-void

    .line 245
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 246
    .restart local v5    # "canShowInfo":Z
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 247
    .restart local v12    # "canShowDisable":Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 248
    .restart local v13    # "canShowUninstall":Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 249
    .restart local v16    # "notAFolder":Z
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 250
    .restart local v9    # "isAppItem":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 251
    .restart local v6    # "canShowDisableContainer":Z
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 253
    .restart local v7    # "canShowUninstallContainer":Z
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 259
    .restart local v8    # "canAddToPersonal":Z
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 277
    .restart local v14    # "isNonDisableItem":Z
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 342
    .end local v5    # "canShowInfo":Z
    .end local v6    # "canShowDisableContainer":Z
    .end local v7    # "canShowUninstallContainer":Z
    .end local v8    # "canAddToPersonal":Z
    .end local v9    # "isAppItem":Z
    .end local v12    # "canShowDisable":Z
    .end local v13    # "canShowUninstall":Z
    .end local v14    # "isNonDisableItem":Z
    .end local v16    # "notAFolder":Z
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/HomeEditBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    if-eqz v2, :cond_7

    .line 343
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    goto :goto_a
.end method

.method public getBarPosition()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 754
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 763
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    if-ne v0, v1, :cond_7

    .line 764
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->setVisibility(I)V

    .line 766
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 767
    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 772
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 773
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 776
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 777
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 780
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 781
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 783
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 784
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 785
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 788
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 789
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 791
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 792
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 793
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 800
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 801
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 802
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 805
    :cond_7
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 814
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 825
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 826
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    .line 827
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setInitialAnimationParameter()V

    .line 828
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    .line 829
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    .line 831
    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 832
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 833
    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 835
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 839
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 840
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setInitialAnimationParameter()V

    .line 841
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    .line 842
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    .line 843
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 920
    const/4 v3, 0x0

    .line 922
    .local v3, "rc":Z
    invoke-static {p2}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 986
    :goto_0
    return v4

    .line 924
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    .line 927
    .local v2, "localState":Ljava/lang/Object;
    :goto_1
    instance-of v4, v2, Lcom/android/launcher2/DragState;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 928
    check-cast v1, Lcom/android/launcher2/DragState;

    .line 929
    .local v1, "dragState":Lcom/android/launcher2/DragState;
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 930
    .local v0, "dragItem":Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_2

    .line 931
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_5

    .line 932
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_4

    .line 933
    const/4 v3, 0x0

    .line 979
    :cond_1
    :goto_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 980
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 981
    sget-object v4, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v4, :cond_2

    .line 982
    sget-object v4, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v4}, Lcom/android/launcher2/DragState;->onEnd()V

    .end local v0    # "dragItem":Lcom/android/launcher2/BaseItem;
    .end local v1    # "dragState":Lcom/android/launcher2/DragState;
    :cond_2
    move v4, v3

    .line 986
    goto :goto_0

    .line 924
    .end local v2    # "localState":Ljava/lang/Object;
    :cond_3
    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    .line 935
    .restart local v0    # "dragItem":Lcom/android/launcher2/BaseItem;
    .restart local v1    # "dragState":Lcom/android/launcher2/DragState;
    .restart local v2    # "localState":Ljava/lang/Object;
    :cond_4
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_2

    .line 937
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_9

    .line 939
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_8

    .line 940
    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "addapps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "add_widgets"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "create_folder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "resize_widgets"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "move_app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 945
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 947
    :cond_7
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_2

    .line 952
    :cond_8
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_2

    .line 954
    :cond_9
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_a

    .line 955
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->newFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_2

    .line 956
    :cond_a
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_c

    .line 957
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_b

    .line 958
    const/4 v3, 0x0

    goto :goto_2

    .line 960
    :cond_b
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->disable(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_2

    .line 962
    :cond_c
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_d

    .line 963
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->uninstall(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto/16 :goto_2

    .line 964
    :cond_d
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_f

    .line 965
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_e

    .line 966
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 968
    :cond_e
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->cancel(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto/16 :goto_2

    .line 973
    :cond_f
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_1

    .line 974
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->addToPersonal(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto/16 :goto_2
.end method

.method protected onFinishInflate()V
    .locals 11

    .prologue
    const v10, 0x7f020141

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 1007
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1012
    const v0, 0x7f0f0044

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 1013
    .local v7, "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_0

    .line 1014
    const v0, 0x7f0f0045

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1015
    .local v8, "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 1016
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    .line 1017
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    .line 1018
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1019
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    .line 1020
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1021
    new-instance v0, Lcom/android/launcher2/AppInfoDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/AppInfoDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    .line 1025
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_0
    const v0, 0x7f0f004e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 1026
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_1

    .line 1027
    const v0, 0x7f0f002d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1028
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 1029
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    .line 1030
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    .line 1031
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1032
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 1033
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1034
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1035
    .local v3, "bin":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1036
    .local v4, "lid":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 1041
    .end local v3    # "bin":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lid":Landroid/graphics/drawable/Drawable;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_1
    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 1042
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_2

    .line 1043
    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1044
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 1045
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    .line 1046
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    .line 1047
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1048
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1049
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1050
    new-instance v0, Lcom/android/launcher2/NewFolderDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 1055
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2
    const v0, 0x7f0f0046

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 1056
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_3

    .line 1057
    const v0, 0x7f0f0047

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1058
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 1059
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    .line 1060
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    .line 1061
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1062
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    .line 1063
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1064
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1065
    .restart local v3    # "bin":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1066
    .restart local v4    # "lid":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    .line 1071
    .end local v3    # "bin":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lid":Landroid/graphics/drawable/Drawable;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_3
    const v0, 0x7f0f0048

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 1072
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_4

    .line 1073
    const v0, 0x7f0f0049

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1074
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_4

    .line 1075
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    .line 1076
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    .line 1077
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1078
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    .line 1079
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 1080
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1081
    .restart local v3    # "bin":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1082
    .restart local v4    # "lid":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    .line 1087
    .end local v3    # "bin":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lid":Landroid/graphics/drawable/Drawable;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_4
    const v0, 0x7f0f004a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 1088
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_5

    .line 1089
    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1090
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_5

    .line 1091
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;

    .line 1092
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    .line 1093
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1094
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalDrawable:Landroid/graphics/drawable/Drawable;

    .line 1095
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1096
    new-instance v0, Lcom/android/launcher2/AddToPersonalDrawable;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/android/launcher2/AddToPersonalDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAddToPersonalDrawable:Landroid/graphics/drawable/Drawable;

    .line 1100
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_5
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 1101
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_6

    .line 1102
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1103
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_6

    .line 1104
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    .line 1105
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    .line 1106
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1107
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    .line 1108
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 1109
    new-instance v0, Lcom/android/launcher2/CancelDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CancelDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    .line 1126
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    .line 1127
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    .line 1128
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    .line 1129
    return-void
.end method
