.class Lcom/android/settings/DirectPenInputSettings$9;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 474
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$9;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 477
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$9;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$9;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings$9;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 479
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$9;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # invokes: Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V
    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$300(Lcom/android/settings/DirectPenInputSettings;)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$9;->this$0:Lcom/android/settings/DirectPenInputSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v0, v1}, Lcom/android/settings/DirectPenInputSettings;->access$702(Lcom/android/settings/DirectPenInputSettings;Z)Z

    .line 481
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$9;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->isTryButtonPressed:Z
    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$900(Lcom/android/settings/DirectPenInputSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$9;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # invokes: Lcom/android/settings/DirectPenInputSettings;->startTryIt()V
    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$1000(Lcom/android/settings/DirectPenInputSettings;)V

    .line 484
    :cond_0
    return-void
.end method
