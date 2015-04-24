.class public Lcom/android/launcher2/HomeView$HomeEditTabClickListener;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HomeEditTabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/HomeView;)V
    .locals 0

    .prologue
    .line 4531
    iput-object p1, p0, Lcom/android/launcher2/HomeView$HomeEditTabClickListener;->this$0:Lcom/android/launcher2/HomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 4534
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "add_widgets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v1, "change_wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4547
    :cond_0
    :goto_0
    return-void

    .line 4537
    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4538
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 4541
    :sswitch_0
    invoke-static {v2}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 4542
    invoke-static {v2}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 4543
    iget-object v0, p0, Lcom/android/launcher2/HomeView$HomeEditTabClickListener;->this$0:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->showWorkspace(Z)V

    goto :goto_0

    .line 4538
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f004f -> :sswitch_0
        0x7f0f0076 -> :sswitch_0
    .end sparse-switch
.end method
