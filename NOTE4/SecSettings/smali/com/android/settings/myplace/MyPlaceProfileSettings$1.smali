.class Lcom/android/settings/myplace/MyPlaceProfileSettings$1;
.super Ljava/lang/Object;
.source "MyPlaceProfileSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceProfileSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceProfileSettings;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 268
    .local v0, "action":I
    const/16 v1, 0x14

    if-ne p2, v1, :cond_0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 270
    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceProfileSettings$1;->this$0:Lcom/android/settings/myplace/MyPlaceProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/myplace/MyPlaceProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 273
    :cond_0
    return v3
.end method
