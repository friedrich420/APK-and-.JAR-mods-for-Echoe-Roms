.class Lcom/android/settings/SViewColor$5;
.super Ljava/lang/Object;
.source "SViewColor.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewColor;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewColor;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewColor;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings/SViewColor$5;->this$0:Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 249
    if-eqz p2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/settings/SViewColor$5;->this$0:Lcom/android/settings/SViewColor;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/SViewColor;->mIsOptionMenuFocus:Z
    invoke-static {v0, v1}, Lcom/android/settings/SViewColor;->access$302(Lcom/android/settings/SViewColor;Z)Z

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/android/settings/SViewColor$5;->this$0:Lcom/android/settings/SViewColor;

    # invokes: Lcom/android/settings/SViewColor;->setfocusButton()V
    invoke-static {v0}, Lcom/android/settings/SViewColor;->access$400(Lcom/android/settings/SViewColor;)V

    .line 255
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SViewColor$5;->this$0:Lcom/android/settings/SViewColor;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/SViewColor;->mIsOptionMenuFocus:Z
    invoke-static {v0, v1}, Lcom/android/settings/SViewColor;->access$302(Lcom/android/settings/SViewColor;Z)Z

    goto :goto_0
.end method
