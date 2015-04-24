.class public Lcom/android/launcher2/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Folder$FolderNameChangeListener;,
        Lcom/android/launcher2/Folder$FolderAnimationInfo;,
        Lcom/android/launcher2/Folder$FolderVertScroller;,
        Lcom/android/launcher2/Folder$FolderManager;,
        Lcom/android/launcher2/Folder$FolderColor;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field public static final FOLDER_TCHEVHDL_CLOSED:I = 0x2

.field public static final FOLDER_TCHEVHDL_EDIT_CANCELLED:I = 0x1

.field public static final FOLDER_TCHEVHDL_UNPROCESSED:I = 0x3

.field static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sHintText:Ljava/lang/String;


# instance fields
.field private child:Lcom/android/launcher2/BaseItem;

.field folderLocation:[I

.field iconLocation:[I

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

.field protected mContent:Lcom/android/launcher2/CellLayoutNoGap;

.field mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

.field mDragState:Lcom/android/launcher2/DragState;

.field mExpandDuration:I

.field mFolderAddItemButton:Landroid/widget/ImageView;

.field mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field mFolderButtonDivider:Landroid/widget/ImageView;

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

.field private mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

.field mFolderName:Lcom/android/launcher2/FolderEditText;

.field private mFolderNameChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/Folder$FolderNameChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderNameHeight:I

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

.field private mHeight:I

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIgnoreShrinkingFolder:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher2/FolderItem;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mIsFolderOpenAnimationEnded:Z

.field private mItemClickListener:Landroid/view/View$OnClickListener;

.field final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMaxFolderVisibleCols:I

.field private mMaxFolderVisibleRows:I

.field mMenu:Lcom/android/launcher2/MenuAppsGrid;

.field private mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

.field mOnColorViewClickListener:Landroid/view/View$OnClickListener;

.field final mOnExitAlarm:Lcom/android/launcher2/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field mOtherParent:Landroid/view/ViewGroup;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v1, Lcom/android/launcher2/Alarm;

    invoke-direct {v1}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    .line 113
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    .line 290
    new-instance v1, Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$FolderVertScroller;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    .line 370
    new-instance v1, Lcom/android/launcher2/Folder$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$1;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnColorViewClickListener:Landroid/view/View$OnClickListener;

    .line 630
    new-instance v1, Lcom/android/launcher2/Folder$7;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$7;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 1193
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    .line 1194
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    .line 1449
    new-instance v1, Lcom/android/launcher2/Folder$11;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$11;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 1625
    new-instance v1, Lcom/android/launcher2/Folder$12;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$12;-><init>(Lcom/android/launcher2/Folder;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->getGridValues(Landroid/content/res/Resources;)V

    .line 141
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    .line 143
    const v1, 0x7f100069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    .line 145
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    .line 146
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f02004d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    .line 148
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f0a0057

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f02004e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f020050

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f020051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f02004f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f0a0058

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f0a005a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f0a005b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    sget-object v2, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v3, 0x7f0a0059

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Folder;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Folder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/Folder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Folder;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/Folder;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/Folder;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Folder;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/Folder;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Folder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    return-void
.end method

.method private animateOpen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1307
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setVisibility(I)V

    .line 1308
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 1309
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->prepareForOpenAnimate()V

    .line 1312
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/Folder$9;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Folder$9;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1333
    return-void
.end method

.method private checkAddItemState()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 379
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    .line 380
    .local v1, "hv":Lcom/android/launcher2/HomeView;
    sget-object v8, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppModel;->getSecretItems()Ljava/util/List;

    move-result-object v4

    .line 381
    .local v4, "secretItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v4, :cond_1

    move v3, v6

    .line 382
    .local v3, "secretItemCount":I
    :goto_0
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v2

    .line 384
    .local v2, "page":I
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 385
    .local v5, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v5, :cond_0

    .line 386
    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 387
    .local v0, "cl":Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v8

    if-ne v8, v7, :cond_2

    if-gtz v3, :cond_2

    .line 395
    .end local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .end local v2    # "page":I
    .end local v5    # "ws":Lcom/android/launcher2/Workspace;
    :cond_0
    :goto_1
    return v6

    .line 381
    .end local v3    # "secretItemCount":I
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .restart local v0    # "cl":Lcom/android/launcher2/CellLayout;
    .restart local v2    # "page":I
    .restart local v3    # "secretItemCount":I
    .restart local v5    # "ws":Lcom/android/launcher2/Workspace;
    :cond_2
    move v6, v7

    .line 390
    goto :goto_1
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1173
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method private getGridValues(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 293
    const v0, 0x7f0c002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    .line 295
    const v0, 0x7f0c002f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    .line 297
    return-void
.end method

.method private getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 1890
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1891
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1892
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1893
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1898
    .end local v0    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :goto_2
    return-object v2

    .line 1891
    .restart local v0    # "i":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1890
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1898
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private notifyFolderNameChangeListeners(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1942
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder$FolderNameChangeListener;

    .line 1943
    .local v1, "listener":Lcom/android/launcher2/Folder$FolderNameChangeListener;
    invoke-interface {v1, p1}, Lcom/android/launcher2/Folder$FolderNameChangeListener;->onFolderNameChange(Ljava/lang/String;)V

    goto :goto_0

    .line 1945
    .end local v1    # "listener":Lcom/android/launcher2/Folder$FolderNameChangeListener;
    :cond_0
    return-void
.end method

.method private onCloseComplete()V
    .locals 3

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1842
    .local v2, "parent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 1844
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->clearFocus()V

    .line 1850
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 1851
    .local v1, "iconView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1852
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1855
    :cond_1
    return-void

    .line 1845
    .end local v1    # "iconView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1846
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private openFolderWithoutAnimation()V
    .locals 1

    .prologue
    .line 1298
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 1299
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->open()V

    .line 1300
    return-void
.end method

.method private prepareForOpenAnimate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1257
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getFolderAnimationInfo()Lcom/android/launcher2/Folder$FolderAnimationInfo;

    move-result-object v0

    .line 1258
    .local v0, "folderAnimInfo":Lcom/android/launcher2/Folder$FolderAnimationInfo;
    if-eqz v0, :cond_0

    .line 1259
    iget-object v1, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setTranslationX(F)V

    .line 1260
    iget-object v1, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setTranslationY(F)V

    .line 1262
    iget-object v1, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setScaleX(F)V

    .line 1263
    iget-object v1, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    aget v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setScaleY(F)V

    .line 1265
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->setAlpha(F)V

    .line 1267
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(Landroid/view/DragEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1576
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-gt v8, v9, :cond_1

    :cond_0
    move v6, v7

    .line 1595
    :goto_0
    return v6

    .line 1579
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    .line 1580
    .local v5, "y":F
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v1

    .line 1581
    .local v1, "cellHt":I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v8

    div-int/lit8 v9, v1, 0x3

    add-int v4, v8, v9

    .line 1582
    .local v4, "topScrollCutOff":I
    int-to-float v8, v4

    cmpg-float v8, v5, v8

    if-gez v8, :cond_2

    .line 1583
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollUp()V

    goto :goto_0

    .line 1586
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getMeasuredHeight()I

    move-result v2

    .line 1587
    .local v2, "mh":I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v3

    .line 1589
    .local v3, "pb":I
    sub-int v8, v2, v3

    div-int/lit8 v9, v1, 0x3

    sub-int v0, v8, v9

    .line 1590
    .local v0, "bottomScrollCutOff":I
    int-to-float v8, v0

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    .line 1591
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v7}, Lcom/android/launcher2/Folder$FolderVertScroller;->scrollDown()V

    goto :goto_0

    .line 1594
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    move v6, v7

    .line 1595
    goto :goto_0
.end method

.method private setScrollViewSize()V
    .locals 6

    .prologue
    .line 599
    iget v4, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 600
    .local v2, "rows":I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v0

    .line 601
    .local v0, "height":I
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v5, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredWidthForColumns(I)I

    move-result v3

    .line 603
    .local v3, "width":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v4, v5, :cond_0

    .line 605
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    .line 607
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 608
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 609
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 610
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 1642
    sget-boolean v1, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 1643
    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder item count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " folder visible cols = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_0
    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    div-int v0, v1, v2

    .line 1646
    .local v0, "rows":I
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v2, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 1647
    return-void
.end method

.method private setupContentForNumItems(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 1817
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 1818
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    .line 1819
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/HomeView;

    if-nez v0, :cond_0

    .line 1823
    :goto_0
    return-void

    .line 1822
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    goto :goto_0
.end method

.method private showAddFolderItem()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1047
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1049
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v10, 0x7f0f0034

    invoke-virtual {v9, v10}, Lcom/android/launcher2/CellLayoutNoGap;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1050
    .local v1, "button":Landroid/view/View;
    const/4 v0, 0x0

    .line 1055
    .local v0, "addButtonExists":Z
    if-nez v1, :cond_1

    .line 1056
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f03000b

    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1058
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1059
    sget-object v9, Lcom/android/launcher2/FocusHelper;->FOLDER_ADDITEM_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1069
    :goto_0
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 1070
    .local v4, "pixel":[I
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v2

    .line 1071
    .local v2, "cell":I
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v9

    rem-int v7, v2, v9

    .line 1072
    .local v7, "x":I
    int-to-float v9, v2

    iget-object v10, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 1073
    .local v8, "y":I
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v9, v7, v8, v4}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    .line 1074
    new-instance v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v3, v14, v14, v13, v13}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 1076
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    aget v9, v4, v12

    iput v9, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1077
    aget v9, v4, v13

    iput v9, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1078
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutNoGap;->getCellWidth()I

    move-result v9

    iput v9, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 1079
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayoutNoGap;->getCellHeight()I

    move-result v9

    iput v9, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 1083
    if-eqz v0, :cond_2

    .line 1084
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->requestLayout()V

    .line 1090
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10006d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1091
    .local v5, "toolTipAddStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 1092
    .local v6, "viewAddToast":Landroid/widget/Toast;
    new-instance v9, Lcom/android/launcher2/Folder$8;

    invoke-direct {v9, p0, v6}, Lcom/android/launcher2/Folder$8;-><init>(Lcom/android/launcher2/Folder;Landroid/widget/Toast;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1103
    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1104
    invoke-virtual {v1, v13}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1105
    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 1106
    invoke-virtual {v1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    .line 1109
    .end local v0    # "addButtonExists":Z
    .end local v1    # "button":Landroid/view/View;
    .end local v2    # "cell":I
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v4    # "pixel":[I
    .end local v5    # "toolTipAddStr":Ljava/lang/String;
    .end local v6    # "viewAddToast":Landroid/widget/Toast;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_0
    return-void

    .line 1062
    .restart local v0    # "addButtonExists":Z
    .restart local v1    # "button":Landroid/view/View;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1086
    .restart local v2    # "cell":I
    .restart local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v4    # "pixel":[I
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v9, v1, v3}, Lcom/android/launcher2/CellLayoutNoGap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private updateTextViewFocus()V
    .locals 4

    .prologue
    .line 1860
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    .line 1861
    .local v1, "lastChild":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 1862
    .local v0, "firstChild":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    .line 1863
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1864
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusDownId(I)V

    .line 1865
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusRightId(I)V

    .line 1866
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusLeftId(I)V

    .line 1867
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/FolderEditText;->setNextFocusUpId(I)V

    .line 1869
    :cond_0
    return-void
.end method


# virtual methods
.method public addFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher2/Folder$FolderNameChangeListener;

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1935
    return-void
.end method

.method beginHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    iget v1, v1, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/FolderAnimator;->bounceItemInIconAt(Lcom/android/launcher2/BaseItem;I)V

    .line 1600
    return-void
.end method

.method bind(Lcom/android/launcher2/FolderItem;)V
    .locals 8
    .param p1, "info"    # Lcom/android/launcher2/FolderItem;

    .prologue
    .line 1112
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v6}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 1113
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    .line 1114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    .local v5, "overflow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/BaseItem;>;"
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v4

    .line 1117
    .local v4, "numContentItems":I
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_0

    .line 1118
    add-int/lit8 v4, v4, 0x1

    .line 1120
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 1122
    const/4 v0, 0x0

    .line 1123
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1124
    invoke-interface {p1, v1}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/Folder;->child:Lcom/android/launcher2/BaseItem;

    .line 1125
    iget-object v6, p0, Lcom/android/launcher2/Folder;->child:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1126
    iget-object v6, p0, Lcom/android/launcher2/Folder;->child:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1131
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 1135
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_3

    .line 1136
    add-int/lit8 v0, v0, 0x1

    .line 1137
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher2/Folder;->setupContentForNumItems(I)V

    .line 1144
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    .line 1145
    .local v3, "item":Lcom/android/launcher2/BaseItem;
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6, v3}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 1147
    instance-of v6, v3, Lcom/android/launcher2/HomeItem;

    if-eqz v6, :cond_4

    .line 1148
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v3, Lcom/android/launcher2/HomeItem;

    .end local v3    # "item":Lcom/android/launcher2/BaseItem;
    invoke-static {v6, v3}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    .line 1153
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 1154
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6, p0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 1156
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->setFolderNameDefaultFontSize(Z)V

    .line 1159
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->showAddFolderItem()V

    .line 1161
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/Folder;->setFolderColor(IZ)V

    .line 1162
    return-void
.end method

.method public cancelCloseFolderAlarm()V
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 1639
    return-void
.end method

.method cancelHotseatSwapAnimation()V
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancelBouncingItem()V

    .line 1608
    return-void
.end method

.method public centerAboutIcon()V
    .locals 34

    .prologue
    .line 1654
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    .line 1655
    .local v25, "realParent":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v15

    .line 1656
    .local v15, "icon":Landroid/view/View;
    if-nez v15, :cond_0

    .line 1814
    :goto_0
    return-void

    .line 1659
    :cond_0
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 1660
    .local v16, "iconLocation":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-static {v0, v1, v15}, Lcom/android/launcher2/Utilities;->getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v21

    .line 1664
    .local v21, "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingRight()I

    move-result v30

    add-int v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredWidth()I

    move-result v30

    add-int v28, v29, v30

    .line 1666
    .local v28, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeight()I

    move-result v4

    .line 1667
    .local v4, "contentHt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v24

    .line 1670
    .local v24, "maxHtAllowed":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 1672
    .local v26, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 1673
    .local v7, "folderTitleHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    .line 1674
    const v29, 0x7f0e016e

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    const v30, 0x7f0e0172

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    add-int v29, v29, v30

    const v30, 0x7f0e0173

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    add-int v6, v29, v30

    .line 1677
    .local v6, "folderOptionHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1680
    .end local v6    # "folderOptionHeight":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    add-int v29, v29, v30

    add-int v29, v29, v7

    const v30, 0x7f0e015e

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    add-int v8, v29, v30

    .line 1684
    .local v8, "height":I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v29

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_2

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/launcher2/CellLayoutNoGap;->getDesiredHeightForRows(I)I

    move-result v29

    div-int/lit8 v29, v29, 0x3

    add-int v8, v8, v29

    .line 1688
    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getWidth()I

    move-result v29

    sub-int v29, v29, v28

    div-int/lit8 v18, v29, 0x2

    .line 1689
    .local v18, "left":I
    const v29, 0x7f0e0120

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 1691
    .local v27, "top":I
    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    .line 1692
    .local v10, "hotseatAttrs":[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x7f110016

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 1693
    .local v14, "hotseatTypedArray":Landroid/content/res/TypedArray;
    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 1694
    .local v13, "hotseatTextSize":I
    const/16 v29, 0x1

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    .line 1695
    .local v12, "hotseatPaddingBottom":I
    const/16 v29, 0x2

    const/16 v30, 0x0

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    .line 1696
    .local v11, "hotseatDrawablePadding":I
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 1698
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 1699
    .local v5, "displaySize":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1700
    const v29, 0x7f0e017c

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 1701
    .local v23, "marginTop":I
    const v29, 0x7f0e017d

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 1702
    .local v22, "marginBottom":I
    const v29, 0x7f0e0074

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 1703
    .local v20, "limitTopH":I
    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    add-int v30, v23, v22

    add-int v30, v30, v13

    add-int v30, v30, v12

    add-int v30, v30, v11

    sub-int v19, v29, v30

    .line 1706
    .local v19, "limitBottomH":I
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 1707
    .local v17, "item":Ljava/lang/Object;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    move/from16 v29, v0

    if-eqz v29, :cond_e

    move-object/from16 v9, v17

    .line 1708
    check-cast v9, Lcom/android/launcher2/HomeItem;

    .line 1709
    .local v9, "homeItem":Lcom/android/launcher2/HomeItem;
    iget-wide v0, v9, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x64

    cmp-long v29, v30, v32

    if-nez v29, :cond_5

    .line 1710
    iget v0, v9, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_3

    iget v0, v9, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 1711
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 1712
    :cond_4
    const v29, 0x7f0e0012

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 1729
    :cond_5
    :goto_1
    iget-wide v0, v9, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x65

    cmp-long v29, v30, v32

    if-nez v29, :cond_6

    .line 1730
    sub-int v27, v19, v8

    .line 1762
    .end local v9    # "homeItem":Lcom/android/launcher2/HomeItem;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    if-nez v29, :cond_7

    .line 1763
    const/16 v29, 0x1

    aget v27, v16, v29

    .line 1797
    :cond_7
    add-int v29, v27, v8

    move/from16 v0, v29

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 1798
    sub-int v27, v19, v8

    .line 1800
    :cond_8
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 1801
    move/from16 v27, v20

    .line 1803
    :cond_9
    move/from16 v0, v28

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    .line 1804
    move-object/from16 v0, v21

    iput v8, v0, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    .line 1805
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView$LayoutParams;->setMarginStart(I)V

    .line 1806
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c001c

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v29

    add-int v29, v29, v27

    const v30, 0x7f0e00e8

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(I)I

    move-result v30

    add-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher2/HomeView$LayoutParams;->topMargin:I

    .line 1809
    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    .line 1810
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    .line 1811
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1812
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher2/Folder;->mHeight:I

    .line 1813
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Folder;->mWidth:I

    goto/16 :goto_0

    .line 1713
    .restart local v9    # "homeItem":Lcom/android/launcher2/HomeItem;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 1714
    const v29, 0x7f0e0013

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    goto/16 :goto_1

    .line 1715
    :cond_b
    iget v0, v9, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 1716
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_5

    .line 1717
    const v29, 0x7f0e0015

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    sub-int v19, v19, v29

    .line 1718
    sub-int v27, v19, v8

    goto/16 :goto_1

    .line 1721
    :cond_c
    iget v0, v9, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_d

    iget v0, v9, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 1723
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_5

    .line 1724
    const v29, 0x7f0e0014

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    sub-int v19, v19, v29

    .line 1725
    sub-int v27, v19, v8

    goto/16 :goto_1

    .line 1732
    .end local v9    # "homeItem":Lcom/android/launcher2/HomeItem;
    :cond_e
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher2/AppItem;

    move/from16 v29, v0

    if-eqz v29, :cond_6

    move-object/from16 v2, v17

    .line 1733
    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1736
    .local v2, "appItem":Lcom/android/launcher2/AppItem;
    const v29, 0x7f0c0027

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1737
    .local v3, "cellCountX":I
    iget v0, v2, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v29, v0

    div-int v29, v29, v3

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_f

    .line 1739
    const v29, 0x7f0e000d

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1740
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 1741
    :cond_10
    const v29, 0x7f0e000e

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1742
    :cond_11
    iget v0, v2, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v29, v0

    div-int v29, v29, v3

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 1744
    const v29, 0x7f0e000d

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1745
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    .line 1746
    const v29, 0x7f0e000e

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1747
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 1748
    const v29, 0x7f0e000f

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1749
    :cond_14
    iget v0, v2, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v29, v0

    div-int v29, v29, v3

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    .line 1751
    const v29, 0x7f0e000d

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1752
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 1753
    const v29, 0x7f0e000e

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1754
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 1755
    const v29, 0x7f0e0010

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    goto/16 :goto_2

    .line 1756
    :cond_17
    iget v0, v2, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v29, v0

    div-int v29, v29, v3

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 1757
    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    const v30, 0x7f0e0014

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    sub-int v19, v29, v30

    .line 1758
    sub-int v27, v19, v8

    goto/16 :goto_2

    .line 1691
    nop

    :array_0
    .array-data 4
        0x1010095
        0x10100d9
        0x1010171
    .end array-data
.end method

.method public close(ZZ)V
    .locals 10
    .param p1, "commitEdit"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1336
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1391
    :goto_0
    return-void

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 1339
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 1341
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1342
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 1345
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 1347
    if-nez p2, :cond_3

    .line 1348
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->onCloseComplete()V

    .line 1349
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v4}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose()V

    .line 1351
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 1352
    .local v1, "icon":Landroid/view/View;
    instance-of v4, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v4, :cond_2

    .line 1353
    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .end local v1    # "icon":Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 1355
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderAnimator;->removeOpenAnimations()V

    goto :goto_0

    .line 1359
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getFolderAnimationInfo()Lcom/android/launcher2/Folder$FolderAnimationInfo;

    move-result-object v0

    .line 1361
    .local v0, "folderAnimInfo":Lcom/android/launcher2/Folder$FolderAnimationInfo;
    const/4 v4, 0x2

    sget-object v5, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1362
    if-eqz v0, :cond_4

    .line 1363
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    aget v5, v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/Folder$10;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Folder$10;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1384
    :cond_4
    iget-boolean v4, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    if-nez v4, :cond_5

    .line 1385
    const-wide/16 v2, 0x64

    .line 1386
    .local v2, "kExtraDurationOnClose":J
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/Folder;->mExpandDuration:I

    int-to-long v6, v5

    const-wide/16 v8, 0x64

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1390
    .end local v2    # "kExtraDurationOnClose":J
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v4}, Lcom/android/launcher2/Folder$FolderManager;->onFolderClose()V

    goto/16 :goto_0
.end method

.method public completeDragExit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1633
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 1634
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 1635
    return-void
.end method

.method protected createAndAddShortcut(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 1446
    const/4 v0, 0x1

    return v0
.end method

.method public disableChildBadges()V
    .locals 3

    .prologue
    .line 1927
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1928
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1929
    .local v1, "icon":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->hideBadge()V

    .line 1927
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1931
    .end local v1    # "icon":Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method public dismissEditingName(Z)V
    .locals 3
    .param p1, "commitChange"    # Z

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 837
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 838
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 1612
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1613
    .local v0, "r":Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1620
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 1622
    :cond_1
    return v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "aCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1542
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 1543
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1545
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v7, v8, :cond_3

    .line 1547
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutNoGap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    sub-int v6, v7, v8

    .line 1549
    .local v6, "scrollBottomGap":I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v7}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v7

    invoke-static {v7}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderGradationDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1551
    .local v2, "gradationBottom":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1553
    .local v3, "gradationH":I
    const/16 v0, 0xff

    .line 1554
    .local v0, "alphaBottom":I
    if-ge v6, v3, :cond_0

    .line 1555
    mul-int/lit16 v7, v6, 0xff

    div-int v0, v7, v3

    .line 1556
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v5

    .line 1557
    .local v5, "gradation_gap_width":I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingBottom()I

    move-result v4

    .line 1558
    .local v4, "gradation_gap_height":I
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e015e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1560
    .local v1, "contents_padding":I
    if-le v1, v4, :cond_1

    .line 1561
    move v4, v1

    .line 1563
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1569
    const/16 v7, 0xff

    if-ge v0, v7, :cond_2

    .line 1570
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1571
    :cond_2
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1573
    .end local v0    # "alphaBottom":I
    .end local v1    # "contents_padding":I
    .end local v2    # "gradationBottom":Landroid/graphics/drawable/Drawable;
    .end local v3    # "gradationH":I
    .end local v4    # "gradation_gap_height":I
    .end local v5    # "gradation_gap_width":I
    .end local v6    # "scrollBottomGap":I
    :cond_3
    return-void
.end method

.method public doneEditingFolderName(Z)V
    .locals 11
    .param p1, "commit"    # Z

    .prologue
    const/4 v10, 0x0

    .line 841
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v7, Lcom/android/launcher2/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v10}, Lcom/android/launcher2/FolderEditText;->setSelection(I)V

    .line 844
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Folder;->setFolderNameDefaultFontSize(Z)V

    .line 846
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderEditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 850
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/Folder;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 852
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v10}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 853
    if-eqz p1, :cond_4

    .line 858
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, "newFolderName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 860
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Lcom/android/launcher2/FolderItem;->setTitle(Landroid/content/Context;Ljava/lang/String;)V

    .line 862
    invoke-direct {p0, v2}, Lcom/android/launcher2/Folder;->notifyFolderNameChangeListeners(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 865
    .local v1, "iconView":Landroid/view/View;
    instance-of v6, v1, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    move-object v3, v1

    .line 866
    check-cast v3, Landroid/widget/TextView;

    .line 867
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v6}, Lcom/android/launcher2/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 868
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    instance-of v6, v6, Lcom/android/launcher2/HomeItem;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    check-cast v6, Lcom/android/launcher2/HomeItem;

    iget-wide v6, v6, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher2/Utilities;->isCamera()Z

    move-result v6

    if-nez v6, :cond_5

    const v6, 0x7f0b0013

    :goto_0
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 878
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10006a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, "folder":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 885
    :cond_2
    move-object v4, v0

    .line 896
    :cond_3
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 900
    .end local v0    # "folder":Ljava/lang/String;
    .end local v1    # "iconView":Landroid/view/View;
    .end local v2    # "newFolderName":Ljava/lang/String;
    .end local v3    # "textView":Landroid/widget/TextView;
    .end local v4    # "title":Ljava/lang/String;
    :cond_4
    iput-boolean v10, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 901
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 904
    return-void

    .line 871
    .restart local v1    # "iconView":Landroid/view/View;
    .restart local v2    # "newFolderName":Ljava/lang/String;
    .restart local v3    # "textView":Landroid/widget/TextView;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_5
    const v6, 0x7f0b0012

    goto :goto_0

    .line 887
    .restart local v0    # "folder":Ljava/lang/String;
    :cond_6
    const-string v5, ""

    .line 888
    .local v5, "titleEnd":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_7

    .line 889
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 892
    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 893
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public enableChildBadges()V
    .locals 3

    .prologue
    .line 1920
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1921
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1922
    .local v1, "icon":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1920
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1924
    .end local v1    # "icon":Lcom/android/launcher2/AppIconView;
    :cond_0
    return-void
.end method

.method finishHotseatSwapAnimation(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1, "swapWith"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderAnimator;->finishBouncingItem(Lcom/android/launcher2/BaseItem;)V

    .line 1604
    return-void
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1178
    const/4 v0, 0x0

    .line 1179
    .local v0, "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v1, :cond_0

    .line 1180
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    check-cast v0, Lcom/android/launcher2/HomeView$LayoutParams;

    .line 1186
    .restart local v0    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    :goto_0
    return-object v0

    .line 1182
    :cond_0
    new-instance v0, Lcom/android/launcher2/HomeView$LayoutParams;

    .end local v0    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/HomeView$LayoutParams;-><init>(II)V

    .line 1183
    .restart local v0    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    .line 1184
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 766
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 767
    .local v0, "ws":Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getEditTextRegion()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    return-object v0
.end method

.method getFolderAnimationInfo()Lcom/android/launcher2/Folder$FolderAnimationInfo;
    .locals 13

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1207
    const/4 v1, 0x0

    .line 1209
    .local v1, "folderAnimInfo":Lcom/android/launcher2/Folder$FolderAnimationInfo;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v3

    .line 1210
    .local v3, "iconView":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 1211
    iget-object v7, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1213
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v5

    .line 1215
    .local v5, "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1217
    iget-object v7, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v8, v7, v11

    iget v9, v5, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    add-int/2addr v8, v9

    aput v8, v7, v11

    .line 1218
    iget-object v7, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v8, v7, v10

    iget v9, v5, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    add-int/2addr v8, v9

    aput v8, v7, v10

    .line 1221
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher2/MenuView;

    if-eqz v7, :cond_0

    .line 1222
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 1223
    .local v6, "otherParentLoc":[I
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1224
    iget-object v7, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v8, v6, v10

    aput v8, v7, v10

    .line 1227
    .end local v6    # "otherParentLoc":[I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e00c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1228
    .local v2, "iconSize":I
    instance-of v7, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v7, :cond_1

    .line 1229
    invoke-static {v11}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1232
    :cond_1
    const/4 v0, 0x0

    .line 1233
    .local v0, "cellWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    .line 1234
    .local v4, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v4, :cond_2

    .line 1235
    instance-of v7, v4, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_4

    .line 1236
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e00db

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1241
    :cond_2
    :goto_0
    new-instance v1, Lcom/android/launcher2/Folder$FolderAnimationInfo;

    .end local v1    # "folderAnimInfo":Lcom/android/launcher2/Folder$FolderAnimationInfo;
    invoke-direct {v1}, Lcom/android/launcher2/Folder$FolderAnimationInfo;-><init>()V

    .line 1242
    .restart local v1    # "folderAnimInfo":Lcom/android/launcher2/Folder$FolderAnimationInfo;
    if-eqz v1, :cond_3

    .line 1243
    iget-object v7, v1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    iget-object v8, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/android/launcher2/Folder;->mWidth:I

    sub-int/2addr v9, v2

    int-to-float v9, v9

    div-float/2addr v9, v12

    sub-float/2addr v8, v9

    sub-int v9, v0, v2

    int-to-float v9, v9

    div-float/2addr v9, v12

    add-float/2addr v8, v9

    float-to-int v8, v8

    aput v8, v7, v11

    .line 1245
    iget-object v7, v1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->location:[I

    iget-object v8, p0, Lcom/android/launcher2/Folder;->iconLocation:[I

    aget v8, v8, v10

    iget-object v9, p0, Lcom/android/launcher2/Folder;->folderLocation:[I

    aget v9, v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/android/launcher2/Folder;->mHeight:I

    sub-int/2addr v9, v2

    int-to-float v9, v9

    div-float/2addr v9, v12

    sub-float/2addr v8, v9

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    aput v8, v7, v10

    .line 1248
    iget-object v7, v1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    int-to-float v8, v2

    iget v9, p0, Lcom/android/launcher2/Folder;->mWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    aput v8, v7, v11

    .line 1249
    iget-object v7, v1, Lcom/android/launcher2/Folder$FolderAnimationInfo;->scaleBy:[F

    int-to-float v8, v2

    iget v9, p0, Lcom/android/launcher2/Folder;->mHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    aput v8, v7, v10

    .line 1253
    .end local v0    # "cellWidth":I
    .end local v2    # "iconSize":I
    .end local v4    # "item":Lcom/android/launcher2/BaseItem;
    .end local v5    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    :cond_3
    return-object v1

    .line 1237
    .restart local v0    # "cellWidth":I
    .restart local v2    # "iconSize":I
    .restart local v4    # "item":Lcom/android/launcher2/BaseItem;
    .restart local v5    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    :cond_4
    instance-of v7, v4, Lcom/android/launcher2/AppItem;

    if-eqz v7, :cond_2

    .line 1238
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0126

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method getFolderColorByView(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
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

    .line 313
    .local v1, "color":Lcom/android/launcher2/Folder$FolderColor;
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 314
    .local v2, "colorView":Landroid/widget/ImageView;
    if-ne v2, p1, :cond_0

    .line 318
    .end local v1    # "color":Lcom/android/launcher2/Folder$FolderColor;
    .end local v2    # "colorView":Landroid/widget/ImageView;
    :goto_1
    return-object v1

    .line 312
    .restart local v1    # "color":Lcom/android/launcher2/Folder$FolderColor;
    .restart local v2    # "colorView":Landroid/widget/ImageView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "color":Lcom/android/launcher2/Folder$FolderColor;
    .end local v2    # "colorView":Landroid/widget/ImageView;
    :cond_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_1
.end method

.method public getIconId()J
    .locals 4

    .prologue
    .line 196
    const-wide/16 v0, -0x1

    .line 197
    .local v0, "id":J
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v3}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-wide v0, v3, Lcom/android/launcher2/BaseItem;->mId:J

    .line 203
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-wide v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method getInfo()Lcom/android/launcher2/FolderItem;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemViews()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1837
    new-instance v0, Lcom/android/launcher2/ChildIterable;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/ChildIterable;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public getNormalVisibleItems()I
    .locals 2

    .prologue
    .line 622
    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getVisibleItems()I
    .locals 2

    .prologue
    .line 614
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isUsingMoreLineinFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    if-le v0, v1, :cond_0

    .line 616
    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v0, v1

    .line 618
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleRows:I

    iget v1, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public handleTouchOutsideBounds(Landroid/view/MotionEvent;Landroid/view/ViewGroup;)I
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "caller"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1399
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getHeight()I

    move-result v4

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1401
    .local v1, "folderRect":Landroid/graphics/Rect;
    invoke-virtual {p2, p0, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1402
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 1403
    .local v0, "evPt":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 1404
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 1405
    const/4 v2, 0x3

    .line 1406
    .local v2, "res":I
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1407
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1408
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 1409
    const/4 v2, 0x1

    .line 1415
    :cond_0
    :goto_0
    return v2

    .line 1411
    :cond_1
    invoke-virtual {p0, v5, v5}, Lcom/android/launcher2/Folder;->close(ZZ)V

    .line 1412
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public ignoreShrinkingFolder()V
    .locals 1

    .prologue
    .line 1294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 1295
    return-void
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFolderOpenAnimationEnded()Z
    .locals 1

    .prologue
    .line 1303
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z

    return v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->removeAllViews()V

    .line 1424
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllItems()V

    .line 1425
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 1426
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->centerAboutIcon()V

    .line 1427
    return-void
.end method

.method notifyFolderIconChanged(Lcom/android/launcher2/FolderIconView;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 1438
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 1873
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1953
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1954
    sget-boolean v1, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 1955
    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder::onAttachedToWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1958
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1959
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1960
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 15
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2004
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v6

    .line 2005
    .local v6, "items":I
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2007
    add-int/lit8 v6, v6, 0x1

    .line 2009
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 2010
    .local v11, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v11}, Lcom/android/launcher2/Folder;->getGridValues(Landroid/content/res/Resources;)V

    .line 2011
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v13, 0x7f0e00f9

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0e00fa

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/CellLayoutNoGap;->setCellSize(II)V

    .line 2014
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const v13, 0x7f0e015c

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const v14, 0x7f0e015d

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/CellLayoutNoGap;->setGaps(II)V

    .line 2016
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->refreshCellDimension()V

    .line 2018
    const v12, 0x7f0e015f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 2020
    .local v8, "paddingL":I
    const/4 v10, 0x0

    .line 2021
    .local v10, "paddingT":I
    const v12, 0x7f0e0160

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 2023
    .local v9, "paddingR":I
    const v12, 0x7f0e0161

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2025
    .local v7, "paddingB":I
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12, v8, v10, v9, v7}, Lcom/android/launcher2/CellLayoutNoGap;->setPadding(IIII)V

    .line 2026
    invoke-direct {p0, v6}, Lcom/android/launcher2/Folder;->setupContentDimensions(I)V

    .line 2027
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    .line 2029
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2030
    .local v4, "context":Landroid/content/Context;
    const v12, 0x7f11001e

    invoke-static {v4, v12}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2032
    .local v0, "aivTextView":Landroid/content/res/TypedArray;
    const v12, 0x7f11001e

    invoke-static {v4, v12}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2035
    .local v1, "aivView":Landroid/content/res/TypedArray;
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 2037
    .local v3, "clChildren":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 2038
    invoke-virtual {v3, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2039
    .local v2, "child":Landroid/view/View;
    check-cast v2, Lcom/android/launcher2/AppIconView;

    .end local v2    # "child":Landroid/view/View;
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 2037
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2043
    :cond_1
    invoke-static {v1, v0}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 2044
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1965
    sget-boolean v1, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 1966
    const-string v1, "Launcher.Folder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder::onDetachedFromWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1969
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1970
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1971
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Folder;->doneEditingFolderName(Z)V

    .line 1972
    return-void
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 760
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 761
    .local v0, "ws":Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 762
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1492
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1537
    :goto_0
    return v6

    .line 1494
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragState;

    move-object v0, v2

    .line 1497
    .local v0, "dragState":Lcom/android/launcher2/DragState;
    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1499
    :pswitch_0
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    .line 1500
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v2}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    goto :goto_0

    .line 1494
    .end local v0    # "dragState":Lcom/android/launcher2/DragState;
    :cond_1
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    .line 1504
    .restart local v0    # "dragState":Lcom/android/launcher2/DragState;
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 1505
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 1506
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    goto :goto_0

    .line 1509
    :pswitch_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 1512
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->scrollIfNeeded(Landroid/view/DragEvent;)Z

    goto :goto_0

    .line 1515
    :pswitch_4
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 1516
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 1519
    :pswitch_5
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mVertScroller:Lcom/android/launcher2/Folder$FolderVertScroller;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder$FolderVertScroller;->unQueue()V

    .line 1520
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    .line 1521
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    if-eq v2, v3, :cond_4

    :cond_2
    iget-object v2, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v3, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-ne v2, v3, :cond_4

    .line 1524
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 1528
    :goto_2
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v2}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    const-wide/32 v4, -0x80000000

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher2/FolderIconView;->setDraggedIconId(J)V

    .line 1530
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 1531
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1532
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 1533
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v2, v0, v6, v6}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    .line 1534
    iput-object v7, p0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    .line 1535
    iput-object v7, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    goto/16 :goto_0

    .line 1526
    :cond_4
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    goto :goto_2

    .line 1497
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 755
    .local v0, "ws":Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 756
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 908
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 909
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 912
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 14

    .prologue
    .line 400
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 401
    const v11, 0x7f0f00dc

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ScrollView;

    iput-object v11, p0, Lcom/android/launcher2/Folder;->mScrollView:Landroid/widget/ScrollView;

    .line 402
    const v11, 0x7f0f00dd

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutNoGap;

    iput-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    .line 403
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iput-object p0, v11, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    .line 404
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/launcher2/CellLayoutNoGap;->mIgnoreOccupied:Z

    .line 405
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget v12, p0, Lcom/android/launcher2/Folder;->mMaxFolderVisibleCols:I

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 406
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/CellLayoutNoGap;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 407
    const v11, 0x7f0f00db

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/FolderEditText;

    iput-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 408
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v11, p0}, Lcom/android/launcher2/FolderEditText;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 412
    .local v6, "res":Landroid/content/res/Resources;
    const v11, 0x7f0f0028

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    .line 413
    const v11, 0x7f0f0029

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    .line 415
    sget-boolean v11, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v11, :cond_3

    .line 416
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v11, :cond_0

    .line 418
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    new-instance v12, Lcom/android/launcher2/Folder$2;

    invoke-direct {v12, p0}, Lcom/android/launcher2/Folder$2;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    :cond_0
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    sget-object v12, Lcom/android/launcher2/FocusHelper;->FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f10002f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 439
    .local v8, "toolTipStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 440
    .local v10, "viewToast":Landroid/widget/Toast;
    sget-boolean v11, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v11, :cond_1

    .line 441
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    new-instance v12, Lcom/android/launcher2/Folder$3;

    invoke-direct {v12, p0, v10}, Lcom/android/launcher2/Folder$3;-><init>(Lcom/android/launcher2/Folder;Landroid/widget/Toast;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 452
    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 453
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 454
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v11

    const/16 v12, 0x3035

    invoke-virtual {v11, v12}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 456
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v11

    const v12, 0x7f0e001a

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    const/16 v13, 0x19

    invoke-virtual {v11, v12, v13}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 457
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    .line 460
    :cond_2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    .line 461
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v13, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v11, 0x7f0f0037

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v13, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v11, 0x7f0f0038

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v13, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v11, 0x7f0f0039

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v13, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v11, 0x7f0f003a

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v12, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    sget-object v13, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v11, 0x7f0f003b

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 472
    .local v0, "colorView":Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mOnColorViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    sget-object v11, Lcom/android/launcher2/FocusHelper;->FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    .line 477
    .end local v0    # "colorView":Landroid/widget/ImageView;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "toolTipStr":Ljava/lang/String;
    .end local v10    # "viewToast":Landroid/widget/Toast;
    :cond_3
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f10006d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "toolTipAddStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 485
    .local v9, "viewAddToast":Landroid/widget/Toast;
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    .line 503
    .local v5, "menuState":Lcom/android/launcher2/MenuAppsGrid$State;
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    sget-object v12, Lcom/android/launcher2/FocusHelper;->FOLDERNAME_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 504
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v12, Lcom/android/launcher2/Folder$4;

    invoke-direct {v12, p0}, Lcom/android/launcher2/Folder$4;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v12, Lcom/android/launcher2/Folder$5;

    invoke-direct {v12, p0}, Lcom/android/launcher2/Folder$5;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 543
    const/4 v4, 0x0

    .line 544
    .local v4, "measureSpec":I
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v11, v4, v4}, Lcom/android/launcher2/FolderEditText;->measure(II)V

    .line 545
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v11}, Lcom/android/launcher2/FolderEditText;->getMeasuredHeight()I

    move-result v11

    iput v11, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 546
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v11}, Lcom/android/launcher2/FolderEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 547
    .local v1, "folderNameLP":Landroid/view/ViewGroup$LayoutParams;
    instance-of v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_5

    move-object v3, v1

    .line 548
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 549
    .local v3, "marginLP":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    iput v11, p0, Lcom/android/launcher2/Folder;->mFolderNameHeight:I

    .line 551
    .end local v3    # "marginLP":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5
    const v11, 0x7f0e0163

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 554
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 555
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v11, p0}, Lcom/android/launcher2/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 557
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 558
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 560
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v12, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v12}, Lcom/android/launcher2/FolderEditText;->getInputType()I

    move-result v12

    or-int/lit16 v12, v12, 0x4000

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderEditText;->setInputType(I)V

    .line 562
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x1e

    invoke-static {v12, v13}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 565
    iget-object v11, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    new-instance v12, Lcom/android/launcher2/Folder$6;

    invoke-direct {v12, p0}, Lcom/android/launcher2/Folder$6;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/FolderEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 586
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->setScrollViewSize()V

    .line 588
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 589
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1000
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 996
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 994
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v12, 0x8

    const/4 v7, 0x0

    const/4 v11, 0x1

    .line 930
    const/4 v6, 0x0

    .line 931
    .local v6, "result":Z
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 932
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 933
    .local v1, "evPt":Landroid/graphics/Point;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 934
    .local v4, "optionRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 935
    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 988
    .end local v1    # "evPt":Landroid/graphics/Point;
    .end local v4    # "optionRect":Landroid/graphics/Rect;
    :goto_0
    return v7

    .line 939
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_7

    .line 940
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getPaddingTop()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-direct {v1, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 942
    .restart local v1    # "evPt":Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8, v7}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    .line 943
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 944
    .local v2, "hitRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8, v2}, Lcom/android/launcher2/FolderEditText;->getHitRect(Landroid/graphics/Rect;)V

    .line 945
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    .line 947
    .local v3, "menuState":Lcom/android/launcher2/MenuAppsGrid$State;
    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 948
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 949
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    .line 950
    const/4 v6, 0x1

    .end local v1    # "evPt":Landroid/graphics/Point;
    .end local v2    # "hitRect":Landroid/graphics/Rect;
    .end local v3    # "menuState":Lcom/android/launcher2/MenuAppsGrid$State;
    :cond_1
    :goto_1
    move v7, v6

    .line 988
    goto :goto_0

    .line 951
    .restart local v1    # "evPt":Landroid/graphics/Point;
    .restart local v2    # "hitRect":Landroid/graphics/Rect;
    .restart local v3    # "menuState":Lcom/android/launcher2/MenuAppsGrid$State;
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 952
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 953
    .local v5, "optionViewRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 954
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 955
    .local v0, "btnRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 956
    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_1

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 957
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/FolderEditText;->setEnabled(Z)V

    .line 958
    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v8, v7}, Lcom/android/launcher2/FolderEditText;->setVisibility(I)V

    .line 960
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 961
    const/4 v6, 0x1

    goto :goto_1

    .line 967
    .end local v0    # "btnRect":Landroid/graphics/Rect;
    .end local v5    # "optionViewRect":Landroid/graphics/Rect;
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    if-eqz v7, :cond_4

    .line 968
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 969
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v7

    if-nez v7, :cond_5

    .line 970
    const/4 v6, 0x1

    goto :goto_1

    .line 971
    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7}, Lcom/android/launcher2/FolderEditText;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 972
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v7

    if-nez v7, :cond_6

    .line 974
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 976
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    goto :goto_1

    .line 979
    .end local v1    # "evPt":Landroid/graphics/Point;
    .end local v2    # "hitRect":Landroid/graphics/Rect;
    .end local v3    # "menuState":Lcom/android/launcher2/MenuAppsGrid$State;
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 980
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 981
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v7

    if-nez v7, :cond_8

    .line 982
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 984
    :cond_8
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7, v11}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    .line 985
    iget-object v7, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v7, v11}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    goto/16 :goto_1
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 1903
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->updateTextViewFocus()V

    .line 1904
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 654
    .local v2, "tag":Ljava/lang/Object;
    instance-of v6, v2, Lcom/android/launcher2/BaseItem;

    if-eqz v6, :cond_8

    move-object v0, v2

    .line 655
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 656
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v6

    if-nez v6, :cond_1

    .line 749
    .end local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    return v4

    .line 660
    .restart local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    iput-object v0, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    .line 663
    sget-boolean v6, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v6, :cond_2

    .line 664
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v6

    if-nez v6, :cond_2

    .line 710
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x7f100093

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 712
    goto :goto_0

    .line 716
    :cond_2
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_5

    .line 717
    const-string v6, "add_widgets"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 720
    const-string v6, "addapps"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "create_folder"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 721
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 722
    .local v3, "tag1":Ljava/lang/Object;
    instance-of v6, v3, Lcom/android/launcher2/AppItem;

    if-eqz v6, :cond_4

    move-object v1, v3

    .line 723
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 724
    .local v1, "item1":Lcom/android/launcher2/AppItem;
    iget-object v6, v1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v7, :cond_0

    .line 729
    .end local v1    # "item1":Lcom/android/launcher2/AppItem;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget-object v4, v4, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->addHelpAppPage()V

    .line 734
    .end local v3    # "tag1":Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_7

    .line 737
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_6

    .line 739
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    .line 741
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/Folder;->mMenu:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/MenuAppsGrid;->beginDragging(Landroid/view/View;)Z

    move-result v4

    goto :goto_0

    .line 744
    :cond_7
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    .line 746
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "vibrator"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    const-wide/16 v6, 0x23

    invoke-virtual {v4, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .end local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_8
    move v4, v5

    .line 749
    goto/16 :goto_0
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 1877
    invoke-direct {p0, p1}, Lcom/android/launcher2/Folder;->getViewForInfo(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 1878
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1879
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v1, v1, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 1885
    iget-object v1, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->updateViewsToTheirItemPositions()V

    .line 1887
    :cond_0
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1908
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 925
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 4
    .param p1, "isInTouchMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1976
    sget-boolean v0, Lcom/android/launcher2/Folder;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 1977
    const-string v0, "Launcher.Folder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder::onTouchModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    :cond_0
    if-nez p1, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1980
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    .line 1984
    :goto_0
    return-void

    .line 1982
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p1, "realParent"    # Landroid/view/ViewGroup;
    .param p2, "pseudoParent"    # Landroid/view/ViewGroup;
    .param p3, "animate"    # Z

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 1275
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1279
    :cond_0
    iput-object p2, p0, Lcom/android/launcher2/Folder;->mOtherParent:Landroid/view/ViewGroup;

    .line 1281
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1282
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 1283
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->updateCustomViewToCellLayout()V

    .line 1284
    if-eqz p3, :cond_1

    .line 1285
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->animateOpen()V

    .line 1289
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIgnoreShrinkingFolder:Z

    .line 1290
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0}, Lcom/android/launcher2/Folder$FolderManager;->onFolderOpen()V

    .line 1291
    return-void

    .line 1287
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/Folder;->openFolderWithoutAnimation()V

    goto :goto_0
.end method

.method public parentLayoutEntered()V
    .locals 4

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    iget-object v1, p0, Lcom/android/launcher2/Folder;->mOnExitAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 1483
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 1485
    :cond_0
    return-void
.end method

.method public refreshIconView()V
    .locals 2

    .prologue
    .line 1911
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v0

    .line 1912
    .local v0, "icon":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1913
    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 1914
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0    # "icon":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    .line 1917
    :cond_0
    return-void
.end method

.method public removeFolderNameChangeListener(Lcom/android/launcher2/Folder$FolderNameChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher2/Folder$FolderNameChangeListener;

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderNameChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1939
    return-void
.end method

.method public repositionOpenFolder()V
    .locals 1

    .prologue
    .line 2047
    new-instance v0, Lcom/android/launcher2/Folder$13;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Folder$13;-><init>(Lcom/android/launcher2/Folder;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Folder;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2062
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->updateTempIconPosition()V

    .line 2063
    return-void
.end method

.method public requestChildFocusForHWKey()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 787
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "parent":Landroid/view/ViewParent;
    move-object v2, v1

    .line 788
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 791
    .local v0, "focusedChild":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Folder;->setFocusableInTouchMode(Z)V

    .line 792
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->requestFocus()Z

    .line 795
    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-interface {v1, v3, v3}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public restoreText(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selStart"    # I
    .param p3, "selEnd"    # I

    .prologue
    const/4 v1, 0x1

    .line 207
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getEditTextRegion()Landroid/widget/EditText;

    move-result-object v0

    .line 209
    .local v0, "textArea":Landroid/widget/EditText;
    if-eqz v0, :cond_2

    .line 210
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    .line 212
    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 223
    .end local v0    # "textArea":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAddToFolderButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mAddToFolderButtonListener:Landroid/view/View$OnClickListener;

    .line 1044
    return-void
.end method

.method setFolderColor(IZ)V
    .locals 2
    .param p1, "intColor"    # I
    .param p2, "bUpdateItem"    # Z

    .prologue
    .line 322
    sget-boolean v1, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v1, :cond_4

    .line 324
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 325
    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    .line 335
    .local v0, "color":Lcom/android/launcher2/Folder$FolderColor;
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/Folder;->setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V

    .line 340
    .end local v0    # "color":Lcom/android/launcher2/Folder$FolderColor;
    :goto_1
    return-void

    .line 326
    :cond_0
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 327
    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    .restart local v0    # "color":Lcom/android/launcher2/Folder$FolderColor;
    goto :goto_0

    .line 328
    .end local v0    # "color":Lcom/android/launcher2/Folder$FolderColor;
    :cond_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 329
    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    .restart local v0    # "color":Lcom/android/launcher2/Folder$FolderColor;
    goto :goto_0

    .line 330
    .end local v0    # "color":Lcom/android/launcher2/Folder$FolderColor;
    :cond_2
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 331
    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    .restart local v0    # "color":Lcom/android/launcher2/Folder$FolderColor;
    goto :goto_0

    .line 333
    .end local v0    # "color":Lcom/android/launcher2/Folder$FolderColor;
    :cond_3
    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    .restart local v0    # "color":Lcom/android/launcher2/Folder$FolderColor;
    goto :goto_0

    .line 337
    .end local v0    # "color":Lcom/android/launcher2/Folder$FolderColor;
    :cond_4
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {p0, v1, p2}, Lcom/android/launcher2/Folder;->setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V

    goto :goto_1
.end method

.method setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V
    .locals 7
    .param p1, "color"    # Lcom/android/launcher2/Folder$FolderColor;
    .param p2, "bUpdateItem"    # Z

    .prologue
    .line 343
    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v5, :cond_2

    .line 345
    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/launcher2/Folder$FolderColor;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 346
    .local v2, "folderColor":Lcom/android/launcher2/Folder$FolderColor;
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 347
    .local v1, "colorView":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 348
    if-ne p1, v2, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 359
    .end local v0    # "arr$":[Lcom/android/launcher2/Folder$FolderColor;
    .end local v1    # "colorView":Landroid/widget/ImageView;
    .end local v2    # "folderColor":Lcom/android/launcher2/Folder$FolderColor;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderTextColors:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/FolderEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 361
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Folder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 364
    if-eqz p2, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher2/Folder$FolderColor;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/launcher2/FolderItem;->setFolderColor(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 368
    :cond_3
    return-void
.end method

.method setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V
    .locals 2
    .param p1, "m"    # Lcom/android/launcher2/Folder$FolderManager;

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    .line 1005
    new-instance v1, Lcom/android/launcher2/FolderAnimator;

    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v1, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    .line 1007
    invoke-interface {p1}, Lcom/android/launcher2/Folder$FolderManager;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 1008
    return-void
.end method

.method public setFolderNameDefaultFontSize(Z)V
    .locals 9
    .param p1, "bAuto"    # Z

    .prologue
    const/4 v8, 0x1

    .line 805
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 806
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 807
    .local v0, "density":F
    const v6, 0x7f0e0165

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v1, v6, v0

    .line 808
    .local v1, "fontSize":F
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v8, v1}, Lcom/android/launcher2/FolderEditText;->setTextSize(IF)V

    .line 809
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 810
    .local v3, "paint":Landroid/graphics/Paint;
    const v6, 0x7f0e0163

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v7, 0x7f0e0158

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float/2addr v6, v7

    const v7, 0x7f0e015b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    sub-float v2, v6, v7

    .line 813
    .local v2, "nameWidth":F
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 815
    .local v5, "textWidth":F
    if-eqz p1, :cond_0

    cmpl-float v6, v5, v2

    if-lez v6, :cond_0

    .line 816
    const v6, 0x7f0e0166

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v1, v6, v0

    .line 817
    iget-object v6, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v6, v8, v1}, Lcom/android/launcher2/FolderEditText;->setTextSize(IF)V

    .line 819
    :cond_0
    return-void
.end method

.method public setHomeView(Lcom/android/launcher2/HomeView;)V
    .locals 1
    .param p1, "home"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 627
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 628
    return-void
.end method

.method public setItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/launcher2/Folder;->mItemClickListener:Landroid/view/View$OnClickListener;

    .line 1031
    return-void
.end method

.method public startEditingFolderName()V
    .locals 3

    .prologue
    .line 822
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    .line 833
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    if-nez v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Folder;->mIsEditingName:Z

    .line 830
    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public startEditingFolderName(Z)V
    .locals 2
    .param p1, "giveFocusToEditText"    # Z

    .prologue
    .line 779
    if-eqz p1, :cond_0

    .line 780
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 781
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 783
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->startEditingFolderName()V

    .line 784
    return-void
.end method

.method updateFolderColorViews(Lcom/android/launcher2/Folder$FolderColor;)V
    .locals 7
    .param p1, "newColor"    # Lcom/android/launcher2/Folder$FolderColor;

    .prologue
    .line 300
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

    .line 301
    .local v1, "color":Lcom/android/launcher2/Folder$FolderColor;
    iget-object v5, p0, Lcom/android/launcher2/Folder;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 302
    .local v2, "colorView":Landroid/widget/ImageView;
    if-ne v1, p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 306
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 309
    .end local v1    # "color":Lcom/android/launcher2/Folder$FolderColor;
    .end local v2    # "colorView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method public updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V
    .locals 1
    .param p1, "v"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderManager:Lcom/android/launcher2/Folder$FolderManager;

    invoke-interface {v0, p1}, Lcom/android/launcher2/Folder$FolderManager;->setIconView(Lcom/android/launcher2/FolderIconView;)V

    .line 1012
    iget-object v0, p0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderAnimator;->updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V

    .line 1013
    if-eqz p1, :cond_0

    .line 1014
    invoke-virtual {p1, p0}, Lcom/android/launcher2/FolderIconView;->setFolder(Lcom/android/launcher2/Folder;)V

    .line 1015
    :cond_0
    return-void
.end method
