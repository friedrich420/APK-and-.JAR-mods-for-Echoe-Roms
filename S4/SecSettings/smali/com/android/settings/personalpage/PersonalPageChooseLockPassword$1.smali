.class Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$1;
.super Landroid/database/ContentObserver;
.source "PersonalPageChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;

    invoke-virtual {v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, "State":I
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;

    invoke-virtual {v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "LockType":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 102
    const-string v2, "PersonalPageChooseLockPassword"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPersonalPageObserver back with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;

    invoke-virtual {v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;->finish()V

    .line 105
    :cond_0
    return-void
.end method
