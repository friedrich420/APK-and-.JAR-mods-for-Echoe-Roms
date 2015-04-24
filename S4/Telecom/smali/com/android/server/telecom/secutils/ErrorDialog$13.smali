.class final Lcom/android/server/telecom/secutils/ErrorDialog$13;
.super Ljava/lang/Object;
.source "ErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/ErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/ErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog$13;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog$13;->this$0:Lcom/android/server/telecom/secutils/ErrorDialog;

    # invokes: Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->access$400(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    .line 323
    return-void
.end method
