.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;
.super Landroid/os/AsyncTask;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->executeCacRegistration(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "cacpin"    # [Ljava/lang/String;

    .prologue
    .line 1187
    const-string v2, "ChooseLockPassword"

    const-string v3, "executeCacRegistration: doInBackground"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const-string v0, "failed"

    .line 1189
    .local v0, "res":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$600(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->initializeCACAuthentication_Sync()V

    .line 1190
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$600(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordWithCAC(Ljava/lang/String;)I

    move-result v1

    .line 1191
    .local v1, "result":I
    const-string v2, "ChooseLockPassword"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeCacRegistration: doInBackground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationComplete:Z
    invoke-static {v2, v3}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$702(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    .line 1193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1164
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1199
    :try_start_0
    const-string v3, "ChooseLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v1, 0x0

    .line 1201
    .local v1, "res":Z
    const-string v3, "ChooseLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1203
    .local v2, "value":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1239
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$802(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    .line 1240
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0272

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$902(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1243
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1200(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2$1;

    invoke-direct {v4, p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2$1;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1262
    .end local v1    # "res":Z
    .end local v2    # "value":I
    :goto_1
    return-void

    .line 1205
    .restart local v1    # "res":Z
    .restart local v2    # "value":I
    :pswitch_0
    const/4 v1, 0x1

    .line 1206
    goto :goto_0

    .line 1208
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$802(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    .line 1209
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0275

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$902(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1210
    const-string v3, "ChooseLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    .end local v1    # "res":Z
    .end local v2    # "value":I
    :catch_0
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ChooseLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RegisterCAC::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1214
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "res":Z
    .restart local v2    # "value":I
    :pswitch_2
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$802(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    .line 1215
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0276

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$902(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1216
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1002(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    .line 1217
    const-string v3, "ChooseLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lock completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1221
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$802(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    .line 1222
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0278

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$902(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1223
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacCardLocked:Z
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$1002(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    goto/16 :goto_0

    .line 1228
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$802(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    .line 1229
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0274

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$902(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1233
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    const/4 v4, 0x1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationError:Z
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$802(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Z)Z

    .line 1234
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0277

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->cacRegistrationResult:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$902(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1164
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1167
    const-string v0, "ChooseLockPassword"

    const-string v1, "executeCacRegistration: onPreExecute"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    # setter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$202(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;I)I

    .line 1172
    const-string v0, "ChooseLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mOrientation:I
    invoke-static {v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$200(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    # invokes: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getDeviceOrientation()I
    invoke-static {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$300(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$400(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    .line 1175
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$500(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1176
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->access$400(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/inputmethodservice/KeyboardView;->setKeepScreenOn(Z)V

    .line 1177
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a027a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1179
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1180
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1181
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1182
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1183
    return-void
.end method
