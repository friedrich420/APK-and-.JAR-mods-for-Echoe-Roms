.class final Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;
.super Ljava/lang/Object;
.source "TelecomDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

.field private synthetic val$editText:Landroid/widget/EditText;

.field private synthetic val$extraFromWhere:Ljava/lang/String;

.field private synthetic val$prefixNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    iput-object p2, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->val$extraFromWhere:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->val$prefixNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    const-string v1, "us_cdma_call_fowarding_setting"

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->val$extraFromWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->val$prefixNumber:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->access$000(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 413
    :cond_0
    check-cast p1, Landroid/app/AlertDialog;

    .line 414
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 415
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 416
    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;->val$prefixNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->showActivateCompleteNumberDialog(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->access$100(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
