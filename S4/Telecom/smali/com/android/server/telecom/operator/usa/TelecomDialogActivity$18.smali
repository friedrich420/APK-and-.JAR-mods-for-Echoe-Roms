.class final Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$18;
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


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$18;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 521
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->wirelessPriorityServiceCall()V

    .line 522
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$18;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    .line 523
    return-void
.end method
