.class Lcom/android/settings/smartscreen/SmartScreenSettings$7;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialogForScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 639
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    # invokes: Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    # invokes: Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$700(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$7;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    # invokes: Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$800(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V

    .line 645
    :cond_0
    return-void
.end method
