.class Lcom/android/settings/myplace/SelectMapActivity$5;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 249
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 245
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$400(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$400(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mCloseIcon:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$300(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$400(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$5;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$400(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
