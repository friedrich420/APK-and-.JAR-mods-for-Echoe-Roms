.class final Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$11;
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
    .line 338
    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$11;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$11;->this$0:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    .line 342
    return-void
.end method
