.class Lcom/android/settings/DirectPenInputSettings$1;
.super Landroid/database/ContentObserver;
.source "DirectPenInputSettings.java"


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
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 81
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/DirectPenInputSettings;->access$000(Lcom/android/settings/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/DirectPenInputSettings;->access$100(Lcom/android/settings/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 83
    .local v0, "directPenState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # getter for: Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/DirectPenInputSettings;->access$200(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/DirectPenInputSettings$1;->this$0:Lcom/android/settings/DirectPenInputSettings;

    # invokes: Lcom/android/settings/DirectPenInputSettings;->setPreferenceEnabled()V
    invoke-static {v1}, Lcom/android/settings/DirectPenInputSettings;->access$300(Lcom/android/settings/DirectPenInputSettings;)V

    .line 85
    return-void
.end method
