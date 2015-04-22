.class Lcom/android/settings/DrivingModeEnabler$4;
.super Ljava/lang/Object;
.source "DrivingModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DrivingModeEnabler;->showDrivingModeOnDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DrivingModeEnabler;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/DrivingModeEnabler;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/settings/DrivingModeEnabler$4;->this$0:Lcom/android/settings/DrivingModeEnabler;

    iput-object p2, p0, Lcom/android/settings/DrivingModeEnabler$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 286
    .local v0, "mDoNotShowChecked":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler$4;->this$0:Lcom/android/settings/DrivingModeEnabler;

    # getter for: Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/DrivingModeEnabler;->access$000(Lcom/android/settings/DrivingModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quickpanel_drivingmode_checked"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    return-void

    .line 285
    .end local v0    # "mDoNotShowChecked":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
