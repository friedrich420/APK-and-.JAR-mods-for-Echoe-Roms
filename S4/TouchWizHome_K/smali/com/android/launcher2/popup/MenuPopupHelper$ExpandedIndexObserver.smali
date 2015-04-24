.class Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;
.super Landroid/database/DataSetObserver;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popup/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedIndexObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popup/MenuPopupHelper;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/popup/MenuPopupHelper;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/popup/MenuPopupHelper;Lcom/android/launcher2/popup/MenuPopupHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/popup/MenuPopupHelper;
    .param p2, "x1"    # Lcom/android/launcher2/popup/MenuPopupHelper$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/android/launcher2/popup/MenuPopupHelper;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
    invoke-static {v0}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$500(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 381
    return-void
.end method
