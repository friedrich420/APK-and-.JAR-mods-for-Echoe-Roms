.class Lcom/android/settings/CurrentLocationFragment$3;
.super Ljava/lang/Object;
.source "CurrentLocationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CurrentLocationFragment;->checkLocationAavilability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CurrentLocationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/CurrentLocationFragment;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/CurrentLocationFragment$3;->this$0:Lcom/android/settings/CurrentLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v0, 0x1

    .line 150
    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment$3;->this$0:Lcom/android/settings/CurrentLocationFragment;

    iget-object v2, p0, Lcom/android/settings/CurrentLocationFragment$3;->this$0:Lcom/android/settings/CurrentLocationFragment;

    invoke-virtual {v2}, Lcom/android/settings/CurrentLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/CurrentLocationFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z
    invoke-static {v1, v0}, Lcom/android/settings/CurrentLocationFragment;->access$002(Lcom/android/settings/CurrentLocationFragment;Z)Z

    .line 151
    iget-object v0, p0, Lcom/android/settings/CurrentLocationFragment$3;->this$0:Lcom/android/settings/CurrentLocationFragment;

    # getter for: Lcom/android/settings/CurrentLocationFragment;->mSwitchView:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/CurrentLocationFragment;->access$100(Lcom/android/settings/CurrentLocationFragment;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment$3;->this$0:Lcom/android/settings/CurrentLocationFragment;

    # getter for: Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z
    invoke-static {v1}, Lcom/android/settings/CurrentLocationFragment;->access$000(Lcom/android/settings/CurrentLocationFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 153
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
