.class Lcom/android/launcher2/AddToHomescreenDialogFragment$3;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AddToHomescreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$3;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.THEME_CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$3;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 163
    iget-object v1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$3;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->dismiss()V

    .line 164
    return-void
.end method
