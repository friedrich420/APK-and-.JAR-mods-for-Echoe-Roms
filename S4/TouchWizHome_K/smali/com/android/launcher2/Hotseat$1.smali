.class Lcom/android/launcher2/Hotseat$1;
.super Ljava/lang/Object;
.source "Hotseat.java"

# interfaces
.implements Lcom/android/launcher2/ItemViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Hotseat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Hotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Hotseat;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "page"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 73
    sget-object v0, Lcom/android/launcher2/Hotseat$3;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to convert item into view for Hotseat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    # getter for: Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v0}, Lcom/android/launcher2/Hotseat;->access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    const v1, 0x7f03002f

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .restart local p1    # "item":Lcom/android/launcher2/BaseItem;
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    # getter for: Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v0}, Lcom/android/launcher2/Hotseat;->access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeView;

    move-result-object v0

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    const v1, 0x7f03002e

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/launcher2/HomeView;->createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher2/BaseItem;
    .param p3, "page"    # Lcom/android/launcher2/CellLayout;

    .prologue
    const/4 v6, 0x0

    .line 90
    instance-of v1, p1, Lcom/android/launcher2/AllappsIcon;

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 91
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 93
    .local v0, "hitem":Lcom/android/launcher2/HomeItem;
    iget-object v1, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    # getter for: Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Hotseat;->access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    # getter for: Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z
    invoke-static {v1}, Lcom/android/launcher2/Hotseat;->access$100(Lcom/android/launcher2/Hotseat;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    instance-of v1, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 95
    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 97
    :cond_2
    sget-object v1, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 98
    new-instance v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v5, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    instance-of v1, p1, Lcom/android/launcher2/Folder;

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {p1, v6}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 102
    iget-object v1, p0, Lcom/android/launcher2/Hotseat$1;->this$0:Lcom/android/launcher2/Hotseat;

    # getter for: Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Hotseat;->access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method
