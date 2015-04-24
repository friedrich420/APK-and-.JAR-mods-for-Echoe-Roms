.class public Lcom/android/launcher2/MenuEditBar;
.super Landroid/widget/LinearLayout;
.source "MenuEditBar.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuEditBar$6;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuEditBar"


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAppInfo:Landroid/widget/TextView;

.field private mAppInfoContainer:Landroid/widget/FrameLayout;

.field private mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDelete:Landroid/widget/TextView;

.field private mDeleteContainer:Landroid/widget/FrameLayout;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteText:Ljava/lang/String;

.field private mDiableDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisable:Landroid/widget/TextView;

.field private mDisableContainer:Landroid/widget/FrameLayout;

.field private mHideAnimator:Landroid/animation/Animator;

.field private mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mNewFolder:Landroid/widget/TextView;

.field private mNewFolderContainer:Landroid/widget/FrameLayout;

.field private mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewPage:Landroid/widget/TextView;

.field private mNewPageAllowed:Z

.field private mNewPageContainer:Landroid/widget/FrameLayout;

.field private mNewPageDrawable:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mRes:Landroid/content/res/Resources;

.field private mShowAnimator:Landroid/animation/Animator;

.field private mUninstallText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/MenuEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    .line 113
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x11

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f100089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteText:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f100033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mUninstallText:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 145
    .local v3, "infoOk":Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_1
    :pswitch_0
    return v3

    .line 144
    .end local v3    # "infoOk":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 147
    .restart local v3    # "infoOk":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 151
    :pswitch_2
    if-eqz v3, :cond_0

    .line 152
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 153
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 155
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 162
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 163
    .local v11, "pkgName":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 164
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 166
    .local v10, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10800000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 169
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 170
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_1

    .line 177
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pkgName":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 181
    :pswitch_5
    if-eqz v3, :cond_0

    .line 182
    iget-object v5, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_1

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 205
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_2

    :cond_0
    move v3, v8

    .line 207
    .local v3, "deleteOk":Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    :cond_1
    :goto_1
    :pswitch_0
    return v3

    .end local v3    # "deleteOk":Z
    :cond_2
    move v3, v4

    .line 205
    goto :goto_0

    .line 209
    .restart local v3    # "deleteOk":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 213
    :pswitch_2
    if-eqz v3, :cond_1

    .line 214
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 215
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    move v11, v8

    .line 218
    .local v11, "isEmptyFolder":Z
    :goto_2
    if-eqz v11, :cond_5

    .line 219
    new-instance v0, Lcom/android/launcher2/MenuEditBar$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuEditBar$1;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    .line 233
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const/16 v0, 0x6457

    invoke-virtual {p0, v0, v8}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .end local v11    # "isEmptyFolder":Z
    :cond_4
    move v11, v4

    .line 215
    goto :goto_2

    .line 228
    .restart local v11    # "isEmptyFolder":Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuEditBar;->showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V

    .line 229
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_3

    .line 230
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDrop()V

    goto :goto_3

    .line 240
    .end local v11    # "isEmptyFolder":Z
    :pswitch_3
    if-eqz v3, :cond_1

    .line 241
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 242
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100089

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 244
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    const/16 v0, 0x5695

    invoke-virtual {p0, v0, v8}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_1

    .line 251
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 255
    :pswitch_5
    if-eqz v3, :cond_1

    .line 256
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_1

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private disableApp(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 350
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v0, :cond_2

    :cond_0
    move v3, v8

    .line 352
    .local v3, "disableOk":Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 400
    :cond_1
    :goto_1
    :pswitch_0
    return v3

    .end local v3    # "disableOk":Z
    :cond_2
    move v3, v4

    .line 350
    goto :goto_0

    .line 354
    .restart local v3    # "disableOk":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 358
    :pswitch_2
    if-eqz v3, :cond_1

    .line 359
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v8

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 360
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    move v11, v8

    .line 363
    .local v11, "isEmptyFolder":Z
    :goto_2
    if-eqz v11, :cond_4

    .line 364
    new-instance v0, Lcom/android/launcher2/MenuEditBar$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuEditBar$2;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_1

    .end local v11    # "isEmptyFolder":Z
    :cond_3
    move v11, v4

    .line 360
    goto :goto_2

    .line 373
    .restart local v11    # "isEmptyFolder":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuEditBar;->showDisableConfirmationDialog(Lcom/android/launcher2/AppItem;)V

    .line 374
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    .line 375
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDrop()V

    goto :goto_1

    .line 382
    .end local v11    # "isEmptyFolder":Z
    :pswitch_3
    if-eqz v3, :cond_1

    .line 383
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v8

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 384
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100089

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_1

    .line 390
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 394
    :pswitch_5
    if-eqz v3, :cond_1

    .line 395
    iget-object v6, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v5, p0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->hideEditBar(Landroid/animation/Animator;)V

    .line 273
    :cond_1
    return-void
.end method

.method private newFolder(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 20
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 290
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    const/4 v5, 0x1

    .line 291
    .local v5, "folderOk":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 345
    :cond_0
    :goto_1
    :pswitch_0
    return v5

    .line 290
    .end local v5    # "folderOk":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 293
    .restart local v5    # "folderOk":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 296
    :pswitch_2
    if-eqz v5, :cond_0

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    .line 298
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 299
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v2, v3, :cond_2

    const/16 v17, 0x1

    .line 302
    .local v17, "isAlphaGrid":Z
    :goto_2
    const/16 v16, 0x0

    .line 304
    .local v16, "cellToPlace":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    move/from16 v19, v0

    .line 305
    .local v19, "screenToPlace":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    move/from16 v16, v0

    .line 307
    if-eqz v17, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->getSavedScreen()I

    move-result v14

    .line 308
    .local v14, "screen":I
    :goto_3
    if-eqz v17, :cond_4

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/AppItem;

    invoke-virtual {v2}, Lcom/android/launcher2/AppItem;->getSavedCell()I

    move-result v15

    .line 309
    .local v15, "cell":I
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v18

    .line 310
    .local v18, "p":Lcom/android/launcher2/Folder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppsGrid;->setPrevFolderOnCreateFolder(Lcom/android/launcher2/Folder;)V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/DragState;->getContainerType()J

    move-result-wide v8

    const-wide/16 v10, -0x66

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v6 .. v15}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    .line 314
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const/16 v2, 0x6457

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_1

    .line 300
    .end local v14    # "screen":I
    .end local v15    # "cell":I
    .end local v16    # "cellToPlace":I
    .end local v17    # "isAlphaGrid":Z
    .end local v18    # "p":Lcom/android/launcher2/Folder;
    .end local v19    # "screenToPlace":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .restart local v16    # "cellToPlace":I
    .restart local v17    # "isAlphaGrid":Z
    .restart local v19    # "screenToPlace":I
    :cond_3
    move/from16 v14, v19

    .line 307
    goto :goto_3

    .restart local v14    # "screen":I
    :cond_4
    move/from16 v15, v16

    .line 308
    goto :goto_4

    .line 321
    .end local v14    # "screen":I
    .end local v16    # "cellToPlace":I
    .end local v17    # "isAlphaGrid":Z
    .end local v19    # "screenToPlace":I
    :pswitch_3
    if-eqz v5, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 323
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f100087

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v6}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 325
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const/16 v2, 0x5695

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_1

    .line 332
    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 339
    :cond_5
    :goto_5
    :pswitch_5
    if-eqz v5, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_1

    .line 334
    :cond_6
    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_5

    .line 335
    sget-object v2, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->onEnd()V

    goto :goto_5

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 9
    .param p1, "item"    # Lcom/android/launcher2/AppItem;
    .param p2, "dragState"    # Lcom/android/launcher2/DragState;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 419
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 469
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    return v0

    .line 422
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 423
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 424
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    .line 425
    .local v6, "mv":Lcom/android/launcher2/MenuView;
    iget v0, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v7, v0, 0x1

    iput v7, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 427
    .local v7, "newScreenPos":I
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p1, v7}, Lcom/android/launcher2/MenuAppModel;->editInsertItemOnNewScreen(Lcom/android/launcher2/AppItem;I)V

    .line 429
    new-instance v0, Lcom/android/launcher2/MenuEditBar$3;

    invoke-direct {v0, p0, v6, p1}, Lcom/android/launcher2/MenuEditBar$3;-><init>(Lcom/android/launcher2/MenuEditBar;Lcom/android/launcher2/MenuView;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    .line 440
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10005a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 445
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    const/16 v0, 0x6457

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 451
    .end local v6    # "mv":Lcom/android/launcher2/MenuView;
    .end local v7    # "newScreenPos":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v3

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 452
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100088

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    .line 454
    iget-boolean v0, p0, Lcom/android/launcher2/MenuEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/16 v0, 0x5695

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/MenuEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 460
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 464
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v4, v8

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto/16 :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setAnimatorsForOrientation()V
    .locals 5

    .prologue
    .line 674
    iget v3, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v0, v3, 0x3

    .line 676
    .local v0, "barPosition":I
    packed-switch v0, :pswitch_data_0

    .line 690
    :pswitch_0
    const v1, 0x7f050016

    .line 691
    .local v1, "hideAnim":I
    const v2, 0x7f050017

    .line 694
    .local v2, "showAnim":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    .line 695
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 696
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mHideAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBar$4;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBar$4;-><init>(Lcom/android/launcher2/MenuEditBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    .line 714
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    new-instance v4, Lcom/android/launcher2/MenuEditBar$5;

    invoke-direct {v4, p0}, Lcom/android/launcher2/MenuEditBar$5;-><init>(Lcom/android/launcher2/MenuEditBar;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 725
    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 726
    return-void

    .line 678
    .end local v1    # "hideAnim":I
    .end local v2    # "showAnim":I
    :pswitch_1
    const v1, 0x7f05000e

    .line 679
    .restart local v1    # "hideAnim":I
    const v2, 0x7f05000f

    .line 680
    .restart local v2    # "showAnim":I
    goto :goto_0

    .line 682
    .end local v1    # "hideAnim":I
    .end local v2    # "showAnim":I
    :pswitch_2
    const v1, 0x7f050014

    .line 683
    .restart local v1    # "hideAnim":I
    const v2, 0x7f050015

    .line 684
    .restart local v2    # "showAnim":I
    goto :goto_0

    .line 686
    .end local v1    # "hideAnim":I
    .end local v2    # "showAnim":I
    :pswitch_3
    const/high16 v1, 0x7f050000

    .line 687
    .restart local v1    # "hideAnim":I
    const v2, 0x7f050001

    .line 688
    .restart local v2    # "showAnim":I
    goto :goto_0

    .line 676
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
    .line 741
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 742
    aput-object p2, p3, p4

    .line 743
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    const/4 v3, 0x3

    aget-object v3, p3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 745
    :cond_0
    return-void
.end method

.method private setDrawablesForOrientation()V
    .locals 4

    .prologue
    .line 752
    const/4 v2, 0x4

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 754
    .local v0, "d":[Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v1, v2, 0x4

    .line 758
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 759
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 760
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 761
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 762
    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/MenuEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 763
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
    .line 782
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 783
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 785
    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 786
    invoke-virtual {p1, p5}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 787
    return-void
.end method

.method private showDeleteConfirmationDialog(Lcom/android/launcher2/AppItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 846
    sget-object v0, Lcom/android/launcher2/MenuEditBar$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 858
    .end local p1    # "item":Lcom/android/launcher2/AppItem;
    :goto_0
    return-void

    .line 848
    .restart local p1    # "item":Lcom/android/launcher2/AppItem;
    :pswitch_0
    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 853
    :pswitch_1
    check-cast p1, Lcom/android/launcher2/AppFolderItem;

    .end local p1    # "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Lcom/android/launcher2/AppFolderItem;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDisableConfirmationDialog(Lcom/android/launcher2/AppItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 861
    sget-object v0, Lcom/android/launcher2/MenuEditBar$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 867
    :goto_0
    return-void

    .line 863
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->callDisableDialog(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    .line 861
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBarPosition()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v6, 0x7f110024

    const v5, 0x7f110026

    const v4, 0x7f110025

    const v3, 0x7f11001b

    .line 474
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 477
    .local v0, "dragBar":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuEditBar;->mPosition:I

    .line 478
    invoke-static {v6, p0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/LinearLayout;)V

    .line 479
    invoke-static {v6, p0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 480
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 484
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 486
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 487
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 488
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 492
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 493
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 494
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 497
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 498
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 502
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 504
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 505
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 506
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 508
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 509
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 510
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 511
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 512
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 516
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    .line 517
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .prologue
    .line 536
    const/4 v6, 0x0

    .line 538
    .local v6, "rc":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 539
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v5

    .line 542
    :goto_0
    instance-of v7, v5, Lcom/android/launcher2/DragState;

    if-eqz v7, :cond_3

    move-object v3, v5

    .line 543
    check-cast v3, Lcom/android/launcher2/DragState;

    .line 544
    .local v3, "dragState":Lcom/android/launcher2/DragState;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 545
    .local v0, "action":I
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 546
    .local v1, "baseItem":Lcom/android/launcher2/BaseItem;
    instance-of v7, v1, Lcom/android/launcher2/AppItem;

    if-eqz v7, :cond_2

    move-object v2, v1

    .line 547
    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 549
    .local v2, "dragItem":Lcom/android/launcher2/AppItem;
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_5

    .line 550
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    .line 562
    :cond_0
    :goto_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 563
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 564
    sget-object v7, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    if-eqz v7, :cond_1

    .line 565
    sget-object v7, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 566
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->hide()V

    .line 569
    .end local v2    # "dragItem":Lcom/android/launcher2/AppItem;
    :cond_2
    const/4 v7, 0x5

    if-ne v0, v7, :cond_3

    .line 570
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v4

    .line 571
    .local v4, "folder":Lcom/android/launcher2/Folder;
    if-eqz v4, :cond_3

    .line 572
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 576
    .end local v0    # "action":I
    .end local v1    # "baseItem":Lcom/android/launcher2/BaseItem;
    .end local v3    # "dragState":Lcom/android/launcher2/DragState;
    .end local v4    # "folder":Lcom/android/launcher2/Folder;
    :cond_3
    return v6

    .line 541
    :cond_4
    sget-object v5, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    .local v5, "localState":Lcom/android/launcher2/DragState;
    goto :goto_0

    .line 551
    .end local v5    # "localState":Lcom/android/launcher2/DragState;
    .restart local v0    # "action":I
    .restart local v1    # "baseItem":Lcom/android/launcher2/BaseItem;
    .restart local v2    # "dragItem":Lcom/android/launcher2/AppItem;
    .restart local v3    # "dragState":Lcom/android/launcher2/DragState;
    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_6

    .line 552
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->delete(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_1

    .line 553
    :cond_6
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_7

    .line 554
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->newFolder(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_1

    .line 555
    :cond_7
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_8

    .line 556
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->newPage(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_1

    .line 557
    :cond_8
    iget-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    if-ne p1, v7, :cond_0

    .line 558
    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher2/MenuEditBar;->disableApp(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 588
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 593
    const v0, 0x7f0f0044

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 594
    .local v7, "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_0

    .line 595
    const v0, 0x7f0f0045

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 596
    .local v8, "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 597
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    .line 598
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    .line 599
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 600
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    .line 601
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Lcom/android/launcher2/AppInfoDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/AppInfoDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    .line 606
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_0
    const v0, 0x7f0f004e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 607
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_1

    .line 608
    const v0, 0x7f0f002d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 609
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 610
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    .line 611
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    .line 612
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 613
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 614
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 615
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 616
    .local v3, "bin":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 617
    .local v4, "lid":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 622
    .end local v3    # "bin":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lid":Landroid/graphics/drawable/Drawable;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_1
    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 623
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_2

    .line 624
    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 625
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 626
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    .line 627
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    .line 628
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 629
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 630
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 631
    new-instance v0, Lcom/android/launcher2/NewFolderDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 636
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_2
    const v0, 0x7f0f00ab

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 637
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_3

    .line 638
    const v0, 0x7f0f00ac

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 639
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 640
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    .line 641
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    .line 642
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 643
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 644
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 645
    new-instance v0, Lcom/android/launcher2/NewPageDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewPageDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageDrawable:Landroid/graphics/drawable/Drawable;

    .line 650
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_3
    const v0, 0x7f0f0046

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "fl":Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 651
    .restart local v7    # "fl":Landroid/widget/FrameLayout;
    if-eqz v7, :cond_5

    .line 652
    const v0, 0x7f0f0047

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 653
    .restart local v8    # "tv":Landroid/widget/TextView;
    if-eqz v8, :cond_4

    .line 654
    iput-object v7, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    .line 655
    iput-object v8, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    .line 656
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 657
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    .line 659
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 660
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 661
    .restart local v3    # "bin":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 662
    .restart local v4    # "lid":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDiableDrawable:Landroid/graphics/drawable/Drawable;

    .line 666
    .end local v3    # "bin":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lid":Landroid/graphics/drawable/Drawable;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setAnimatorsForOrientation()V

    .line 667
    invoke-direct {p0}, Lcom/android/launcher2/MenuEditBar;->setDrawablesForOrientation()V

    .line 668
    return-void
.end method

.method public show(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;ZZZZZ)V
    .locals 8
    .param p1, "grid"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p3, "newFolderAllowed"    # Z
    .param p4, "isSystemApp"    # Z
    .param p5, "newPageAllowed"    # Z
    .param p6, "isFolder"    # Z
    .param p7, "canBeDisable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;ZZZZZ)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 795
    invoke-virtual {p0}, Lcom/android/launcher2/MenuEditBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 796
    iput-object p1, p0, Lcom/android/launcher2/MenuEditBar;->mMenuAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    .line 797
    iput-boolean p5, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageAllowed:Z

    .line 802
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 803
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfo:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 804
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_7

    move v0, v4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 807
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz p6, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDelete:Landroid/widget/TextView;

    if-nez p4, :cond_9

    move v3, v7

    :goto_2
    move-object v0, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 809
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-eqz p4, :cond_a

    move v0, v6

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 818
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 819
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_b

    move v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 822
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mNewPage:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 823
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mNewPageContainer:Landroid/widget/FrameLayout;

    if-eqz p5, :cond_c

    move v0, v4

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 825
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 827
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/MenuEditBar;->mDisable:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p4

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/MenuEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 828
    iget-object v1, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    if-nez p4, :cond_d

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_d

    move v0, v6

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 829
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_4

    if-nez p7, :cond_5

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 834
    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuEditBar;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mCurrentAnimator:Landroid/animation/Animator;

    .line 836
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mShowAnimator:Landroid/animation/Animator;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_6
    return-void

    :cond_7
    move v0, v6

    .line 804
    goto/16 :goto_0

    .line 807
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/MenuEditBar;->mUninstallText:Ljava/lang/String;

    goto :goto_1

    :cond_9
    move v3, v4

    .line 808
    goto :goto_2

    :cond_a
    move v0, v4

    .line 809
    goto :goto_3

    :cond_b
    move v0, v6

    .line 819
    goto :goto_4

    :cond_c
    move v0, v6

    .line 823
    goto :goto_5

    :cond_d
    move v0, v4

    .line 828
    goto :goto_6
.end method
