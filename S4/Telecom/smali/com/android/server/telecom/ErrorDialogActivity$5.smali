.class final Lcom/android/server/telecom/ErrorDialogActivity$5;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ErrorDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/ErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ErrorDialogActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/telecom/ErrorDialogActivity$5;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity$5;->this$0:Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/ErrorDialogActivity;->finish()V

    .line 112
    return-void
.end method
