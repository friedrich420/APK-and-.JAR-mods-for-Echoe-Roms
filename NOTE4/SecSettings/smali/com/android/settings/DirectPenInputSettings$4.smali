.class Lcom/android/settings/DirectPenInputSettings$4;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DirectPenInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0a115f

    const v8, 0x7f0a1158

    const v9, 0x7f0a114c

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 312
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # setter for: Lcom/android/settings/DirectPenInputSettings;->isTryButtonPressed:Z
    invoke-static {v6, v4}, Lcom/android/settings/DirectPenInputSettings;->access$902(Lcom/android/settings/DirectPenInputSettings;Z)Z

    .line 313
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 314
    .local v3, "writingBuddyOn":Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFICATION_ENABLED:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$500(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v1, v4

    .line 315
    .local v1, "MagnificationResult":Z
    :goto_1
    const/4 v0, 0x0

    .line 317
    .local v0, "HoverZoomResult":Z
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.sec.feature.overlaymagnifier"

    invoke-static {v6, v7}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 318
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->ACCESSIBILITY_MAGNIFIER:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/DirectPenInputSettings;->access$600(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v0, v4

    .line 321
    :cond_0
    :goto_2
    if-nez v3, :cond_7

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$700(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6}, Lcom/android/settings/DirectPenInputSettings;->isTalkBackEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 322
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v10}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v7, 0x7f0a1157

    invoke-virtual {v6, v7}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v8}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # invokes: Lcom/android/settings/DirectPenInputSettings;->isTalkbackAvailable()Z
    invoke-static {v5}, Lcom/android/settings/DirectPenInputSettings;->access$800(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 326
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v10}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v6, v8}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v5}, Lcom/android/settings/DirectPenInputSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.sec.feature.overlaymagnifier"

    invoke-static {v5, v6}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v7, 0x7f0a0a0e

    invoke-virtual {v6, v7}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v5, v2, v4}, Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V

    .line 340
    .end local v2    # "message":Ljava/lang/String;
    :goto_3
    return-void

    .end local v0    # "HoverZoomResult":Z
    .end local v1    # "MagnificationResult":Z
    .end local v3    # "writingBuddyOn":Z
    :cond_4
    move v3, v5

    .line 313
    goto/16 :goto_0

    .restart local v3    # "writingBuddyOn":Z
    :cond_5
    move v1, v5

    .line 314
    goto/16 :goto_1

    .restart local v0    # "HoverZoomResult":Z
    .restart local v1    # "MagnificationResult":Z
    :cond_6
    move v0, v5

    .line 318
    goto/16 :goto_2

    .line 333
    :cond_7
    if-nez v3, :cond_8

    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v6}, Lcom/android/settings/DirectPenInputSettings;->access$700(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 334
    iget-object v6, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const v7, 0x7f0a1155

    invoke-virtual {v6, v7}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v8, v9}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v8, v9}, Lcom/android/settings/DirectPenInputSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 336
    .restart local v2    # "message":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-virtual {v4, v2, v5}, Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V

    goto :goto_3

    .line 338
    .end local v2    # "message":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/android/settings/DirectPenInputSettings$4;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # invokes: Lcom/android/settings/DirectPenInputSettings;->startTryIt()V
    invoke-static {v4}, Lcom/android/settings/DirectPenInputSettings;->access$1000(Lcom/android/settings/DirectPenInputSettings;)V

    goto :goto_3
.end method
