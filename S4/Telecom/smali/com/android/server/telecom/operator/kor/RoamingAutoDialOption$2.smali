.class final Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$2;
.super Ljava/lang/Object;
.source "RoamingAutoDialOption.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$2;->this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 66
    const-string v0, "RoamingAutoDialOption"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    if-nez p2, :cond_1

    .line 69
    const-string v1, "extra_rad_dial_to_korea"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    :cond_0
    :goto_0
    const-string v1, "extra_rad_skip_popup"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$2;->this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$2;->this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-static {v0, v4}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->access$002(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;Z)Z

    .line 77
    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$2;->this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->finish()V

    .line 78
    return-void

    .line 70
    :cond_1
    if-ne p2, v4, :cond_0

    .line 71
    const-string v1, "extra_rad_dial_to_korea"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method
