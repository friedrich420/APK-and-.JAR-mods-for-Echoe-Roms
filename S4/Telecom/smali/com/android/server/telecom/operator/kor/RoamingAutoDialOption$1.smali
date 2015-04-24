.class final Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;
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
    .line 56
    iput-object p1, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;->this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 58
    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onClick: negative button"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;->this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-static {v0, v5}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->access$002(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;Z)Z

    .line 60
    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;->this$0:Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->finish()V

    .line 61
    return-void
.end method
