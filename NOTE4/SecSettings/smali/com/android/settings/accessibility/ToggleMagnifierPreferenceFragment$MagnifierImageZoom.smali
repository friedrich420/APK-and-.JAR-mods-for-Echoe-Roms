.class public Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;
.super Landroid/preference/Preference;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MagnifierImageZoom"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mEnabled:Z

.field mIsLongkeyProcessing:Z

.field private mMinusMagnifier:Landroid/widget/ImageView;

.field private mPlusMagnifier:Landroid/widget/ImageView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTitle:Landroid/widget/TextView;

.field private mZoomLayer:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/content/Context;Z)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "enabled"    # Z

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .line 466
    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    .line 467
    const v0, 0x7f040120

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setLayoutResource(I)V

    .line 468
    iput-object p2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    .line 469
    iput-boolean p3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    .line 470
    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 474
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 475
    const v2, 0x7f100290

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    .line 476
    const v2, 0x7f10028f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    .line 477
    const v2, 0x7f100292

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    .line 478
    const v2, 0x7f100293

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    .line 479
    const v2, 0x7f100291

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_value"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 481
    .local v0, "defaultProgress":I
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 484
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 485
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 486
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 488
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v3, v0, 0x7

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 489
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 492
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$000(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_magnifier"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 493
    iput-boolean v5, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    .line 497
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabled(Z)V

    .line 498
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 499
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 500
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 501
    iget-boolean v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    if-eqz v2, :cond_1

    .line 502
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v3, 0x7f020416

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    const v3, 0x7f020415

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 512
    :goto_1
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 513
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 514
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v2, 0x3e4ccccd    # 0.2f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 515
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    :goto_2
    return-void

    .line 495
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    goto :goto_0

    .line 506
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 507
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v3, 0x7f020049

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 508
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    const v3, 0x7f020047

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 517
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 518
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 519
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mZoomLayer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 567
    .local v0, "defaultProgress":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 583
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 569
    :pswitch_1
    if-lez v0, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    add-int/lit8 v3, v0, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 571
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 575
    :pswitch_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 577
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch 0x7f100291
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 587
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hover_zoom_value"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 588
    .local v0, "defaultProgress":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    .line 589
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 634
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 591
    :pswitch_1
    if-lez v0, :cond_0

    .line 592
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$1;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 612
    :pswitch_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 613
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom$2;-><init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x7f100291
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 548
    div-int/lit8 v0, p2, 0x7

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 p2, v0, 0x7

    .line 549
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 550
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hover_zoom_value"

    div-int/lit8 v2, p2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    div-int/lit8 v1, p2, 0x7

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->refreshImageView(I)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$300(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;I)V

    .line 553
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 558
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 563
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 640
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 646
    :goto_0
    return v1

    .line 642
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mIsLongkeyProcessing:Z

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabledZoomButton(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    .line 530
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 534
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v1, 0x7f020416

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    const v1, 0x7f020415

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mPlusMagnifier:Landroid/widget/ImageView;

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->mMinusMagnifier:Landroid/widget/ImageView;

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
