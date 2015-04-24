.class Lcom/android/settings/myplace/SelectMapActivity$6;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 258
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isFouced"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 262
    if-eqz p2, :cond_1

    .line 263
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f020759

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 278
    :goto_1
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f020758

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    :goto_2
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$200(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mSearchViewContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$500(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f020745

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_2
.end method
