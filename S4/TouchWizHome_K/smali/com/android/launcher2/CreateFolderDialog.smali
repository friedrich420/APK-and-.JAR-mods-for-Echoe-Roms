.class public Lcom/android/launcher2/CreateFolderDialog;
.super Landroid/app/DialogFragment;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    }
.end annotation


# static fields
.field private static final FIND_NEW_POS_KEY:Ljava/lang/String; = "FIND_NEW_POSITION"

.field private static final FOLDER_TITLE_KEY:Ljava/lang/String; = "FOLDER_TITLE"

.field private static final ITEM_DESTINATION_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_DESTINATION_CONTAINER_ID"

.field private static final ITEM_ID_KEY:Ljava/lang/String; = "ITEM_ID"

.field private static final ITEM_ORIGIN_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_ORIGIN_CONTAINER_ID"

.field private static final ORIGINAL_CONTAINER_CELL_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_CELL"

.field private static final ORIGINAL_CONTAINER_SCREEN_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_SCREEN"

.field private static final REMOVE_ITEM_KEY:Ljava/lang/String; = "REMOVE_ITEM"

.field static okButtonSelected:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "CreateFolderDialog"


# instance fields
.field private color:Lcom/android/launcher2/Folder$FolderColor;

.field dialog:Landroid/app/Dialog;

.field private mCreateFolderColor:I

.field mCreateFolderDialog:Landroid/widget/LinearLayout;

.field private mDestinationContainerId:J

.field private mDismissDialog:Z

.field private mFindNewPosition:Z

.field mFolderAddButton:Landroid/widget/ImageView;

.field mFolderAddButtonDivider:Landroid/widget/ImageView;

.field private mFolderChildItem:Lcom/android/launcher2/BaseItem;

.field mFolderColorDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mFolderColorViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mFolderOptionButton:Landroid/widget/ImageView;

.field mFolderOptionView:Landroid/widget/LinearLayout;

.field mFolderTextColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderTitle:Landroid/widget/EditText;

.field private mForlderTouchListener:Landroid/view/View$OnTouchListener;

.field private mItemId:J

.field mOnColorViewClickListener:Landroid/view/View$OnClickListener;

.field private mOriginContainerId:J

.field private mOriginalContainerCell:I

.field private mOriginalContainerScreen:I

.field private mRemoveItem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    .line 93
    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    .line 94
    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    .line 95
    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    .line 97
    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    .line 101
    iput v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    .line 102
    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    .line 229
    new-instance v0, Lcom/android/launcher2/CreateFolderDialog$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CreateFolderDialog$1;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mOnColorViewClickListener:Landroid/view/View$OnClickListener;

    .line 261
    new-instance v0, Lcom/android/launcher2/CreateFolderDialog$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CreateFolderDialog$2;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mForlderTouchListener:Landroid/view/View$OnTouchListener;

    .line 871
    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CreateFolderDialog;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CreateFolderDialog;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/CreateFolderDialog;Lcom/android/launcher2/Folder$FolderColor;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/CreateFolderDialog;
    .param p1, "x1"    # Lcom/android/launcher2/Folder$FolderColor;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CreateFolderDialog;IIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CreateFolderDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CreateFolderDialog;->closeFolderOption(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/CreateFolderDialog;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doAddMoreApps(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/CreateFolderDialog;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/CreateFolderDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/CreateFolderDialog;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/launcher2/CreateFolderDialog;->isColorViewFocussed()Z

    move-result v0

    return v0
.end method

.method private closeFolderOption(IIZ)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isForce"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 241
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 242
    .local v0, "evPt":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 243
    .local v2, "optionRect":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 244
    if-nez p3, :cond_1

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 258
    .end local v0    # "evPt":Landroid/graphics/Point;
    .end local v2    # "optionRect":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v3

    .line 247
    .restart local v0    # "evPt":Landroid/graphics/Point;
    .restart local v2    # "optionRect":Landroid/graphics/Rect;
    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 248
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 249
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "input_method"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 254
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move v3, v4

    .line 255
    goto :goto_0
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 10
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "childItem"    # Lcom/android/launcher2/BaseItem;
    .param p2, "originContainerId"    # J
    .param p4, "destinationContainerId"    # J
    .param p6, "removeItem"    # Z
    .param p7, "findNewPosition"    # Z
    .param p8, "originalScreen"    # I
    .param p9, "originalCell"    # I

    .prologue
    .line 168
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {v0}, Lcom/android/launcher2/CreateFolderDialog;-><init>()V

    .local v0, "df":Lcom/android/launcher2/CreateFolderDialog;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 173
    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->init(Lcom/android/launcher2/BaseItem;JJZZII)V

    .line 175
    const-string v1, "CreateFolderDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/CreateFolderDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;Z)V
    .locals 3
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "bNeedToCreate"    # Z

    .prologue
    .line 183
    const-string v1, "CreateFolderDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 185
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 186
    if-eqz p1, :cond_1

    move-object v1, v0

    .line 187
    check-cast v1, Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method private doAddMoreApps(Landroid/app/Dialog;)V
    .locals 6
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 643
    .local v2, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    .line 646
    .local v1, "isHomeView":Z
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    .line 648
    .local v3, "mag":Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v3, :cond_1

    .line 649
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "folderTitle":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonFromHomeView(Z)V

    .line 651
    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuAppsGrid;->setFolderTitletoAddButton(Ljava/lang/String;)V

    .line 652
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->setFolderColorToAddButton(I)V

    .line 654
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_0

    .line 655
    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 658
    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->resetPreCheckedItems()V

    .line 659
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V

    .line 663
    .end local v0    # "folderTitle":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 664
    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    .line 665
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 669
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 674
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismiss()V

    .line 675
    return-void

    .line 643
    .end local v1    # "isHomeView":Z
    .end local v3    # "mag":Lcom/android/launcher2/MenuAppsGrid;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCreateFolder(Landroid/app/Dialog;)V
    .locals 11
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 679
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "folderTitle":Ljava/lang/String;
    const/4 v2, 0x0

    .line 682
    .local v2, "item":Lcom/android/launcher2/BaseItem;
    const/4 v1, 0x0

    .line 684
    .local v1, "listener":Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_a

    .line 686
    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    .line 709
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_10

    .line 711
    :cond_1
    if-eqz v0, :cond_2

    .line 712
    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 725
    :cond_2
    :goto_1
    if-eqz v1, :cond_8

    .line 726
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 727
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    .line 728
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_GRAY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 729
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    .line 730
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_RED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 731
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    .line 732
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_YELLOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 733
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    .line 734
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder$FolderColor;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FOLDER_GREEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 735
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    .line 736
    :cond_7
    iget v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    invoke-interface {v1, v4}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->getCreateFolderColor(I)V

    .line 738
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iget v8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iget v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-interface/range {v1 .. v9}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    .line 749
    :cond_8
    if-eqz p1, :cond_9

    .line 750
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 752
    :cond_9
    return-void

    .line 687
    :cond_a
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 690
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_c

    .line 692
    :cond_b
    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v2

    goto/16 :goto_0

    .line 693
    :cond_c
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_d

    .line 694
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v2

    goto/16 :goto_0

    .line 695
    :cond_d
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_e

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_f

    .line 697
    :cond_e
    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v2

    goto/16 :goto_0

    .line 698
    :cond_f
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 699
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v2

    goto/16 :goto_0

    .line 713
    :cond_10
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 714
    if-eqz v0, :cond_2

    .line 715
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    .line 716
    .local v10, "mMenuView":Lcom/android/launcher2/MenuView;
    if-eqz v10, :cond_2

    .line 717
    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private init(Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 2
    .param p1, "childItem"    # Lcom/android/launcher2/BaseItem;
    .param p2, "originContainerId"    # J
    .param p4, "destinationContainerId"    # J
    .param p6, "removeItem"    # Z
    .param p7, "findNewPosition"    # Z
    .param p8, "originalContainerScreen"    # I
    .param p9, "originalContainerCell"    # I

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    .line 127
    iput-wide p2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    .line 128
    if-eqz p1, :cond_0

    .line 129
    iget-wide v0, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    .line 132
    :cond_0
    iput p8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    .line 133
    iput p9, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    .line 134
    iput-wide p4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    .line 135
    iput-boolean p6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    .line 136
    iput-boolean p7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    .line 137
    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 179
    if-eqz p0, :cond_0

    const-string v0, "CreateFolderDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isColorViewFocussed()Z
    .locals 4

    .prologue
    .line 626
    const/4 v2, 0x0

    .line 628
    .local v2, "isfocussed":Z
    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 629
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 630
    .local v0, "colorView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 631
    const/4 v2, 0x1

    .line 637
    .end local v0    # "colorView":Landroid/widget/ImageView;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v2
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 875
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    if-nez v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    .line 878
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method getFolderColorByView(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/launcher2/Folder$FolderColor;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 196
    .local v1, "color":Lcom/android/launcher2/Folder$FolderColor;
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 197
    .local v2, "colorView":Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    .end local v1    # "color":Lcom/android/launcher2/Folder$FolderColor;
    .end local v2    # "colorView":Landroid/widget/ImageView;
    :goto_1
    return-object v1

    .line 195
    .restart local v1    # "color":Lcom/android/launcher2/Folder$FolderColor;
    .restart local v2    # "colorView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "color":Lcom/android/launcher2/Folder$FolderColor;
    .end local v2    # "colorView":Landroid/widget/ImageView;
    :cond_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 757
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    const/4 v4, -0x1

    if-ne p2, v4, :cond_4

    .line 758
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    .line 759
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, "folderTitle":Ljava/lang/String;
    const/4 v2, 0x0

    .line 767
    .local v2, "item":Lcom/android/launcher2/BaseItem;
    const/4 v1, 0x0

    .line 769
    .local v1, "listener":Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_5

    .line 772
    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    .line 795
    :cond_0
    :goto_0
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    .line 797
    :cond_1
    if-eqz v0, :cond_2

    .line 798
    iget-object v1, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 811
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 813
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iget v8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iget v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-interface/range {v1 .. v9}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    .line 824
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 827
    .end local v1    # "listener":Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    .end local v2    # "item":Lcom/android/launcher2/BaseItem;
    .end local v3    # "folderTitle":Ljava/lang/String;
    :cond_4
    return-void

    .line 773
    .restart local v1    # "listener":Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    .restart local v2    # "item":Lcom/android/launcher2/BaseItem;
    .restart local v3    # "folderTitle":Ljava/lang/String;
    :cond_5
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 776
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    .line 778
    :cond_6
    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v2

    goto :goto_0

    .line 779
    :cond_7
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 780
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v2

    goto :goto_0

    .line 781
    :cond_8
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 783
    :cond_9
    iget-object v4, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v2

    goto :goto_0

    .line 784
    :cond_a
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 785
    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v2

    goto/16 :goto_0

    .line 799
    :cond_b
    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v6, -0x66

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 800
    if-eqz v0, :cond_2

    .line 801
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    .line 802
    .local v10, "mMenuView":Lcom/android/launcher2/MenuView;
    if-eqz v10, :cond_2

    .line 803
    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 275
    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    .line 278
    new-instance v16, Landroid/app/Dialog;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f110008

    invoke-direct/range {v16 .. v18}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    const v17, 0x7f030006

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setContentView(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    .line 282
    .local v14, "vg":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 283
    const v16, 0x7f0f0024

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mForlderTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    const v16, 0x7f0f0023

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f100094

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const/16 v18, 0x1e

    invoke-static/range {v17 .. v18}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 292
    const/4 v4, 0x0

    .line 294
    .local v4, "abortDialog":Z
    if-eqz p1, :cond_0

    .line 295
    const-string v16, "ITEM_ID"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    .line 297
    const-string v16, "ITEM_ORIGIN_CONTAINER_ID"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    .line 302
    const-string v16, "ITEM_DESTINATION_CONTAINER_ID"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    .line 304
    const-string v16, "REMOVE_ITEM"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    .line 305
    const-string v16, "FIND_NEW_POSITION"

    const/16 v17, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    .line 307
    const-string v16, "ORIGINAL_CONTAINER_SCREEN"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    .line 309
    const-string v16, "ORIGINAL_CONTAINER_CELL"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    .line 311
    const-string v16, "FOLDER_TITLE"

    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "folderTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 320
    const/4 v4, 0x1

    .line 324
    .end local v6    # "folderTitle":Ljava/lang/String;
    :cond_0
    const v16, 0x7f0f002a

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 325
    .local v8, "itemView":Landroid/view/View;
    if-eqz v8, :cond_1

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 327
    const v16, 0x7f0f002b

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 329
    .local v7, "iconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    const v16, 0x7f0f002c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 332
    .local v12, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .end local v7    # "iconView":Landroid/widget/ImageView;
    .end local v12    # "textView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    const v16, 0x7f0f0025

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 340
    .local v10, "mAddButton":Landroid/view/View;
    if-nez v10, :cond_8

    const/4 v5, 0x0

    .line 342
    .local v5, "addIcon":Landroid/view/View;
    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v16

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->isFolderCreatedFromMenuButton:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 344
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 345
    const/4 v10, 0x0

    .line 346
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->isFolderCreatedFromMenuButton:Z

    .line 349
    :cond_2
    if-eqz v10, :cond_3

    .line 350
    sget-object v16, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v9

    .line 351
    .local v9, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_9

    .line 352
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 354
    if-eqz v5, :cond_3

    sget-boolean v16, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v16, :cond_3

    .line 356
    new-instance v16, Lcom/android/launcher2/CreateFolderDialog$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$3;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    new-instance v16, Lcom/android/launcher2/CreateFolderDialog$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$4;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 388
    .end local v9    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 390
    .local v11, "res":Landroid/content/res/Resources;
    const v16, 0x7f0f0026

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    .line 391
    const v16, 0x7f0f0028

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    .line 392
    const v16, 0x7f0f0029

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    .line 393
    const v16, 0x7f0f0027

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButtonDivider:Landroid/widget/ImageView;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f10006d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, "toolTipStr":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v13, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    .line 510
    .local v15, "viewToast":Landroid/widget/Toast;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/launcher2/CreateFolderDialog$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v15}, Lcom/android/launcher2/CreateFolderDialog$5;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/content/res/Resources;Landroid/widget/Toast;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v16

    const/16 v17, 0x3035

    invoke-virtual/range {v16 .. v17}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v16

    const v17, 0x7f0e001a

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v17

    const/16 v18, 0x19

    invoke-virtual/range {v16 .. v18}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    .line 550
    .end local v13    # "toolTipStr":Ljava/lang/String;
    .end local v15    # "viewToast":Landroid/widget/Toast;
    :cond_4
    sget-boolean v16, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v16, :cond_5

    .line 551
    sget-object v16, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v17, "create_folder"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/launcher2/CreateFolderDialog$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$6;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 574
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x25

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/launcher2/CreateFolderDialog$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$7;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/launcher2/CreateFolderDialog$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/CreateFolderDialog$8;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/view/View;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 619
    if-eqz v4, :cond_6

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CreateFolderDialog;->dismiss()V

    .line 622
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v16, v0

    return-object v16

    .line 335
    .end local v5    # "addIcon":Landroid/view/View;
    .end local v10    # "mAddButton":Landroid/view/View;
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_7
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 340
    .restart local v10    # "mAddButton":Landroid/view/View;
    :cond_8
    const v16, 0x7f0f0026

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_1

    .line 384
    .restart local v5    # "addIcon":Landroid/view/View;
    .restart local v9    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_9
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 853
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    if-eqz v0, :cond_2

    .line 854
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/CreateFolderDialog$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/CreateFolderDialog$9;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 867
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismiss()V

    .line 869
    :cond_1
    return-void

    .line 862
    :cond_2
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    if-nez v0, :cond_0

    .line 863
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    goto :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 893
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 831
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 833
    const-string v0, "ITEM_ID"

    iget-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 834
    const-string v0, "ITEM_ORIGIN_CONTAINER_ID"

    iget-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 835
    const-string v0, "ITEM_DESTINATION_CONTAINER_ID"

    iget-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 837
    const-string v0, "REMOVE_ITEM"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 838
    const-string v0, "FIND_NEW_POSITION"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 839
    const-string v0, "FOLDER_TITLE"

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v0, "ORIGINAL_CONTAINER_SCREEN"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 841
    const-string v0, "ORIGINAL_CONTAINER_CELL"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 842
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 846
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 847
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getShowsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismissAllowingStateLoss()V

    .line 850
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 883
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 884
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismissAllowingStateLoss()V

    .line 887
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 888
    return-void
.end method

.method setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V
    .locals 11
    .param p1, "color"    # Lcom/android/launcher2/Folder$FolderColor;
    .param p2, "bUpdateItem"    # Z

    .prologue
    .line 206
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/launcher2/Folder$FolderColor;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v3, v0, v4

    .line 207
    .local v3, "folderColor":Lcom/android/launcher2/Folder$FolderColor;
    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 208
    .local v2, "colorView":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {p1, v3}, Lcom/android/launcher2/Folder$FolderColor;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020041

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 213
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 219
    .end local v2    # "colorView":Landroid/widget/ImageView;
    .end local v3    # "folderColor":Lcom/android/launcher2/Folder$FolderColor;
    :cond_2
    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTextColors:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 221
    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    .line 222
    .local v5, "left":I
    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    .line 223
    .local v7, "right":I
    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    .line 224
    .local v8, "top":I
    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    .line 225
    .local v1, "bottom":I
    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5, v8, v7, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 227
    return-void
.end method
