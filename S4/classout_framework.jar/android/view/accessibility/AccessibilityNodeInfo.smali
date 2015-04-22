.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COLLAPSE:I = 0x80000

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_DISMISS:I = 0x100000

.field public static final ACTION_EXPAND:I = 0x40000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final ACTION_SET_TEXT:I = 0x200000

.field private static final ACTION_TYPE_MASK:I = -0x1000000

.field public static final ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final ANY_WINDOW_ID:I = -0x2

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x400

.field private static final BOOLEAN_PROPERTY_CHECKABLE:I = 0x1

.field private static final BOOLEAN_PROPERTY_CHECKED:I = 0x2

.field private static final BOOLEAN_PROPERTY_CLICKABLE:I = 0x20

.field private static final BOOLEAN_PROPERTY_CONTENT_INVALID:I = 0x10000

.field private static final BOOLEAN_PROPERTY_DISMISSABLE:I = 0x4000

.field private static final BOOLEAN_PROPERTY_EDITABLE:I = 0x1000

.field private static final BOOLEAN_PROPERTY_ENABLED:I = 0x80

.field private static final BOOLEAN_PROPERTY_FOCUSABLE:I = 0x4

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x8

.field private static final BOOLEAN_PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final BOOLEAN_PROPERTY_MULTI_LINE:I = 0x8000

.field private static final BOOLEAN_PROPERTY_OPENS_POPUP:I = 0x2000

.field private static final BOOLEAN_PROPERTY_PASSWORD:I = 0x100

.field private static final BOOLEAN_PROPERTY_SCROLLABLE:I = 0x200

.field private static final BOOLEAN_PROPERTY_SELECTED:I = 0x10

.field private static final BOOLEAN_PROPERTY_VISIBLE_TO_USER:I = 0x800

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x8

.field public static final FLAG_PREFETCH_DESCENDANTS:I = 0x4

.field public static final FLAG_PREFETCH_PREDECESSORS:I = 0x1

.field public static final FLAG_PREFETCH_SIBLINGS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field private static final LAST_LEGACY_STANDARD_ACTION:I = 0x200000

.field private static final MAX_POOL_SIZE:I = 0x32

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2

.field public static final ROOT_NODE_ID:J

.field public static final UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final UNDEFINED_ITEM_ID:I = 0x7fffffff

.field public static final UNDEFINED_SELECTION_INDEX:I = -0x1

.field private static final VIRTUAL_DESCENDANT_ID_MASK:J = -0x100000000L

.field private static final VIRTUAL_DESCENDANT_ID_SHIFT:I = 0x20

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBooleanProperties:I

.field private final mBoundsInParent:Landroid/graphics/Rect;

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildNodeIds:Landroid/util/LongArray;

.field private mClassName:Ljava/lang/CharSequence;

.field private mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

.field private mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

.field private mConnectionId:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mError:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mInputType:I

.field private mLabelForId:J

.field private mLabeledById:J

.field private mLiveRegion:I

.field private mMaxTextLength:I

.field private mMovementGranularities:I

.field private mPackageName:Ljava/lang/CharSequence;

.field private mParentNodeId:J

.field private mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

.field private mSealed:Z

.field private mSourceNodeId:J

.field private mText:Ljava/lang/CharSequence;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I

.field private mViewIdResourceName:Ljava/lang/String;

.field private mWindowId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const v0, 0x7fffffff

    .line 78
    invoke-static {v0, v0}, makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, ROOT_NODE_ID:J

    .line 539
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    .line 3825
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    const v0, 0x7fffffff

    iput v0, p0, mWindowId:I

    .line 546
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mSourceNodeId:J

    .line 547
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mParentNodeId:J

    .line 548
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mLabelForId:J

    .line 549
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mLabeledById:J

    .line 552
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    .line 553
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    .line 565
    iput v2, p0, mMaxTextLength:I

    .line 568
    iput v2, p0, mTextSelectionStart:I

    .line 569
    iput v2, p0, mTextSelectionEnd:I

    .line 570
    iput v3, p0, mInputType:I

    .line 571
    iput v3, p0, mLiveRegion:I

    .line 575
    iput v2, p0, mConnectionId:I

    .line 586
    return-void
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 64
    invoke-static {p0}, getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0, p1}, initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private addChildInternal(Landroid/view/View;IZ)V
    .registers 8
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .param p3, "checked"    # Z

    .prologue
    .line 848
    invoke-virtual {p0}, enforceNotSealed()V

    .line 849
    iget-object v3, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v3, :cond_e

    .line 850
    new-instance v3, Landroid/util/LongArray;

    invoke-direct {v3}, Landroid/util/LongArray;-><init>()V

    iput-object v3, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 852
    :cond_e
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    .line 854
    .local v2, "rootAccessibilityViewId":I
    :goto_14
    invoke-static {v2, p2}, makeNodeId(II)J

    move-result-wide v0

    .line 856
    .local v0, "childNodeId":J
    if-eqz p3, :cond_27

    iget-object v3, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->indexOf(J)I

    move-result v3

    if-ltz v3, :cond_27

    .line 860
    :goto_22
    return-void

    .line 852
    .end local v0    # "childNodeId":J
    .end local v2    # "rootAccessibilityViewId":I
    :cond_23
    const v2, 0x7fffffff

    goto :goto_14

    .line 859
    .restart local v0    # "childNodeId":J
    .restart local v2    # "rootAccessibilityViewId":I
    :cond_27
    iget-object v3, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->add(J)V

    goto :goto_22
.end method

.method private addLegacyStandardActions(I)V
    .registers 7
    .param p1, "actionMask"    # I

    .prologue
    .line 2786
    move v2, p1

    .line 2787
    .local v2, "remainingIds":I
    :goto_1
    if-lez v2, :cond_15

    .line 2788
    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int v1, v3, v4

    .line 2789
    .local v1, "id":I
    xor-int/lit8 v3, v1, -0x1

    and-int/2addr v2, v3

    .line 2790
    invoke-static {v1}, getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    .line 2791
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p0, v0}, addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    .line 2793
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "id":I
    :cond_15
    return-void
.end method

.method private canPerformRequestOverConnection(J)Z
    .registers 6
    .param p1, "accessibilityNodeId"    # J

    .prologue
    const v1, 0x7fffffff

    .line 2868
    iget v0, p0, mWindowId:I

    if-eq v0, v1, :cond_14

    invoke-static {p1, p2}, getAccessibilityViewId(J)I

    move-result v0

    if-eq v0, v1, :cond_14

    iget v0, p0, mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private clear()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2723
    iput-boolean v2, p0, mSealed:Z

    .line 2724
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mSourceNodeId:J

    .line 2725
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mParentNodeId:J

    .line 2726
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mLabelForId:J

    .line 2727
    sget-wide v0, ROOT_NODE_ID:J

    iput-wide v0, p0, mLabeledById:J

    .line 2728
    const v0, 0x7fffffff

    iput v0, p0, mWindowId:I

    .line 2729
    iput v4, p0, mConnectionId:I

    .line 2730
    iput v4, p0, mMaxTextLength:I

    .line 2731
    iput v2, p0, mMovementGranularities:I

    .line 2732
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    if-eqz v0, :cond_29

    .line 2733
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 2735
    :cond_29
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2736
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2737
    iput v2, p0, mBooleanProperties:I

    .line 2738
    iput-object v3, p0, mPackageName:Ljava/lang/CharSequence;

    .line 2739
    iput-object v3, p0, mClassName:Ljava/lang/CharSequence;

    .line 2740
    iput-object v3, p0, mText:Ljava/lang/CharSequence;

    .line 2741
    iput-object v3, p0, mError:Ljava/lang/CharSequence;

    .line 2742
    iput-object v3, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 2743
    iput-object v3, p0, mViewIdResourceName:Ljava/lang/String;

    .line 2744
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_4a

    .line 2745
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2747
    :cond_4a
    iput v4, p0, mTextSelectionStart:I

    .line 2748
    iput v4, p0, mTextSelectionEnd:I

    .line 2749
    iput v2, p0, mInputType:I

    .line 2750
    iput v2, p0, mLiveRegion:I

    .line 2751
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_5b

    .line 2752
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 2754
    :cond_5b
    iget-object v0, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v0, :cond_66

    .line 2755
    iget-object v0, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->recycle()V

    .line 2756
    iput-object v3, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2758
    :cond_66
    iget-object v0, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v0, :cond_71

    .line 2759
    iget-object v0, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->recycle()V

    .line 2760
    iput-object v3, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2762
    :cond_71
    iget-object v0, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v0, :cond_7c

    .line 2763
    iget-object v0, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->recycle()V

    .line 2764
    iput-object v3, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 2766
    :cond_7c
    return-void
.end method

.method private enforceValidFocusDirection(I)V
    .registers 5
    .param p1, "direction"    # I

    .prologue
    .line 2337
    sparse-switch p1, :sswitch_data_1e

    .line 2346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2344
    :sswitch_1c
    return-void

    .line 2337
    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1c
        0x11 -> :sswitch_1c
        0x21 -> :sswitch_1c
        0x42 -> :sswitch_1c
        0x82 -> :sswitch_1c
    .end sparse-switch
.end method

.method private enforceValidFocusType(I)V
    .registers 5
    .param p1, "focusType"    # I

    .prologue
    .line 2351
    packed-switch p1, :pswitch_data_1e

    .line 2356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown focus type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2354
    :pswitch_1c
    return-void

    .line 2351
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static getAccessibilityViewId(J)I
    .registers 4
    .param p0, "accessibilityNodeId"    # J

    .prologue
    .line 498
    long-to-int v0, p0

    return v0
.end method

.method private static getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .registers 5
    .param p0, "actionId"    # I

    .prologue
    .line 2774
    # getter for: Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->access$000()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 2775
    .local v0, "actions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1f

    .line 2776
    # getter for: Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->access$000()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2777
    .local v1, "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne p0, v3, :cond_1c

    .line 2782
    .end local v1    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :goto_1b
    return-object v1

    .line 2775
    .restart local v1    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2782
    .end local v1    # "currentAction":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .prologue
    .line 2802
    sparse-switch p0, :sswitch_data_3c

    .line 2840
    const-string v0, "ACTION_UNKNOWN"

    :goto_5
    return-object v0

    .line 2804
    :sswitch_6
    const-string v0, "ACTION_FOCUS"

    goto :goto_5

    .line 2806
    :sswitch_9
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_5

    .line 2808
    :sswitch_c
    const-string v0, "ACTION_SELECT"

    goto :goto_5

    .line 2810
    :sswitch_f
    const-string v0, "ACTION_CLEAR_SELECTION"

    goto :goto_5

    .line 2812
    :sswitch_12
    const-string v0, "ACTION_CLICK"

    goto :goto_5

    .line 2814
    :sswitch_15
    const-string v0, "ACTION_LONG_CLICK"

    goto :goto_5

    .line 2816
    :sswitch_18
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_5

    .line 2818
    :sswitch_1b
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_5

    .line 2820
    :sswitch_1e
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_5

    .line 2822
    :sswitch_21
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_5

    .line 2824
    :sswitch_24
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_5

    .line 2826
    :sswitch_27
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_5

    .line 2828
    :sswitch_2a
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_5

    .line 2830
    :sswitch_2d
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_5

    .line 2832
    :sswitch_30
    const-string v0, "ACTION_CUT"

    goto :goto_5

    .line 2834
    :sswitch_33
    const-string v0, "ACTION_COPY"

    goto :goto_5

    .line 2836
    :sswitch_36
    const-string v0, "ACTION_PASTE"

    goto :goto_5

    .line 2838
    :sswitch_39
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_5

    .line 2802
    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_9
        0x4 -> :sswitch_c
        0x8 -> :sswitch_f
        0x10 -> :sswitch_12
        0x20 -> :sswitch_15
        0x40 -> :sswitch_18
        0x80 -> :sswitch_1b
        0x100 -> :sswitch_1e
        0x200 -> :sswitch_21
        0x400 -> :sswitch_24
        0x800 -> :sswitch_27
        0x1000 -> :sswitch_2a
        0x2000 -> :sswitch_2d
        0x4000 -> :sswitch_33
        0x8000 -> :sswitch_36
        0x10000 -> :sswitch_30
        0x20000 -> :sswitch_39
    .end sparse-switch
.end method

.method private getBooleanProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .prologue
    .line 2248
    iget v0, p0, mBooleanProperties:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static getMovementGranularitySymbolicName(I)Ljava/lang/String;
    .registers 4
    .param p0, "granularity"    # I

    .prologue
    .line 2851
    sparse-switch p0, :sswitch_data_2c

    .line 2863
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown movement granularity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2853
    :sswitch_1c
    const-string v0, "MOVEMENT_GRANULARITY_CHARACTER"

    .line 2861
    :goto_1e
    return-object v0

    .line 2855
    :sswitch_1f
    const-string v0, "MOVEMENT_GRANULARITY_WORD"

    goto :goto_1e

    .line 2857
    :sswitch_22
    const-string v0, "MOVEMENT_GRANULARITY_LINE"

    goto :goto_1e

    .line 2859
    :sswitch_25
    const-string v0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    goto :goto_1e

    .line 2861
    :sswitch_28
    const-string v0, "MOVEMENT_GRANULARITY_PAGE"

    goto :goto_1e

    .line 2851
    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1f
        0x4 -> :sswitch_22
        0x8 -> :sswitch_25
        0x10 -> :sswitch_28
    .end sparse-switch
.end method

.method public static getVirtualDescendantId(J)I
    .registers 6
    .param p0, "accessibilityNodeId"    # J

    .prologue
    .line 511
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8
    .param p1, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, 0x0

    .line 2569
    iget-boolean v2, p1, mSealed:Z

    iput-boolean v2, p0, mSealed:Z

    .line 2570
    iget-wide v4, p1, mSourceNodeId:J

    iput-wide v4, p0, mSourceNodeId:J

    .line 2571
    iget-wide v4, p1, mParentNodeId:J

    iput-wide v4, p0, mParentNodeId:J

    .line 2572
    iget-wide v4, p1, mLabelForId:J

    iput-wide v4, p0, mLabelForId:J

    .line 2573
    iget-wide v4, p1, mLabeledById:J

    iput-wide v4, p0, mLabeledById:J

    .line 2574
    iget v2, p1, mWindowId:I

    iput v2, p0, mWindowId:I

    .line 2575
    iget v2, p1, mConnectionId:I

    iput v2, p0, mConnectionId:I

    .line 2576
    iget-object v2, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget-object v4, p1, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2577
    iget-object v2, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v4, p1, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2578
    iget-object v2, p1, mPackageName:Ljava/lang/CharSequence;

    iput-object v2, p0, mPackageName:Ljava/lang/CharSequence;

    .line 2579
    iget-object v2, p1, mClassName:Ljava/lang/CharSequence;

    iput-object v2, p0, mClassName:Ljava/lang/CharSequence;

    .line 2580
    iget-object v2, p1, mText:Ljava/lang/CharSequence;

    iput-object v2, p0, mText:Ljava/lang/CharSequence;

    .line 2581
    iget-object v2, p1, mError:Ljava/lang/CharSequence;

    iput-object v2, p0, mError:Ljava/lang/CharSequence;

    .line 2582
    iget-object v2, p1, mContentDescription:Ljava/lang/CharSequence;

    iput-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 2583
    iget-object v2, p1, mViewIdResourceName:Ljava/lang/String;

    iput-object v2, p0, mViewIdResourceName:Ljava/lang/String;

    .line 2585
    iget-object v0, p1, mActions:Ljava/util/ArrayList;

    .line 2586
    .local v0, "otherActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;>;"
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_58

    .line 2587
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_c2

    .line 2588
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, mActions:Ljava/util/ArrayList;

    .line 2595
    :cond_58
    :goto_58
    iget v2, p1, mBooleanProperties:I

    iput v2, p0, mBooleanProperties:I

    .line 2596
    iget v2, p1, mMaxTextLength:I

    iput v2, p0, mMaxTextLength:I

    .line 2597
    iget v2, p1, mMovementGranularities:I

    iput v2, p0, mMovementGranularities:I

    .line 2599
    iget-object v1, p1, mChildNodeIds:Landroid/util/LongArray;

    .line 2600
    .local v1, "otherChildNodeIds":Landroid/util/LongArray;
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_78

    .line 2601
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_cf

    .line 2602
    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v2

    iput-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 2609
    :cond_78
    :goto_78
    iget v2, p1, mTextSelectionStart:I

    iput v2, p0, mTextSelectionStart:I

    .line 2610
    iget v2, p1, mTextSelectionEnd:I

    iput v2, p0, mTextSelectionEnd:I

    .line 2611
    iget v2, p1, mInputType:I

    iput v2, p0, mInputType:I

    .line 2612
    iget v2, p1, mLiveRegion:I

    iput v2, p0, mLiveRegion:I

    .line 2613
    iget-object v2, p1, mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_9d

    iget-object v2, p1, mExtras:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 2614
    invoke-virtual {p0}, getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v4, p1, mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2616
    :cond_9d
    iget-object v2, p1, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v2, :cond_da

    iget-object v2, p1, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    :goto_a7
    iput-object v2, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2618
    iget-object v2, p1, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v2, :cond_dc

    iget-object v2, p1, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    :goto_b3
    iput-object v2, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2620
    iget-object v2, p1, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v2, :cond_bf

    iget-object v2, p1, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    :cond_bf
    iput-object v3, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 2622
    return-void

    .line 2590
    .end local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_c2
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2591
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    iget-object v4, p1, mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_58

    .line 2604
    .restart local v1    # "otherChildNodeIds":Landroid/util/LongArray;
    :cond_cf
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2}, Landroid/util/LongArray;->clear()V

    .line 2605
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    goto :goto_78

    :cond_da
    move-object v2, v3

    .line 2616
    goto :goto_a7

    :cond_dc
    move-object v2, v3

    .line 2618
    goto :goto_b3
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .registers 17
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2630
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a0

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, mSealed:Z

    .line 2631
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mSourceNodeId:J

    .line 2632
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mWindowId:I

    .line 2633
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mParentNodeId:J

    .line 2634
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLabelForId:J

    .line 2635
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, mLabeledById:J

    .line 2636
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mConnectionId:I

    .line 2638
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2639
    .local v10, "childrenSize":I
    if-gtz v10, :cond_a3

    .line 2640
    const/4 v0, 0x0

    iput-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 2649
    :cond_37
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2650
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2651
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2652
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2654
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2655
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2656
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2657
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2659
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2660
    .local v7, "actionCount":I
    if-lez v7, :cond_b9

    .line 2661
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 2662
    .local v12, "legacyStandardActions":I
    invoke-direct {p0, v12}, addLegacyStandardActions(I)V

    .line 2663
    invoke-static {v12}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    sub-int v13, v7, v0

    .line 2664
    .local v13, "nonLegacyActionCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8b
    if-ge v11, v13, :cond_b9

    .line 2665
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 2667
    .local v6, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p0, v6}, addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2664
    add-int/lit8 v11, v11, 0x1

    goto :goto_8b

    .line 2630
    .end local v6    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v7    # "actionCount":I
    .end local v10    # "childrenSize":I
    .end local v11    # "i":I
    .end local v12    # "legacyStandardActions":I
    .end local v13    # "nonLegacyActionCount":I
    :cond_a0
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 2642
    .restart local v10    # "childrenSize":I
    :cond_a3
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0, v10}, Landroid/util/LongArray;-><init>(I)V

    iput-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 2643
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_ab
    if-ge v11, v10, :cond_37

    .line 2644
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 2645
    .local v8, "childId":J
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, v8, v9}, Landroid/util/LongArray;->add(J)V

    .line 2643
    add-int/lit8 v11, v11, 0x1

    goto :goto_ab

    .line 2671
    .end local v8    # "childId":J
    .end local v11    # "i":I
    .restart local v7    # "actionCount":I
    :cond_b9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mMaxTextLength:I

    .line 2672
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mMovementGranularities:I

    .line 2673
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mBooleanProperties:I

    .line 2675
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mPackageName:Ljava/lang/CharSequence;

    .line 2676
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mClassName:Ljava/lang/CharSequence;

    .line 2677
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mText:Ljava/lang/CharSequence;

    .line 2678
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mError:Ljava/lang/CharSequence;

    .line 2679
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 2680
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mViewIdResourceName:Ljava/lang/String;

    .line 2682
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mTextSelectionStart:I

    .line 2683
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mTextSelectionEnd:I

    .line 2685
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mInputType:I

    .line 2686
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, mLiveRegion:I

    .line 2688
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_119

    .line 2689
    invoke-virtual {p0}, getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2692
    :cond_119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_136

    .line 2693
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    iput-object v0, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 2700
    :cond_136
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_157

    .line 2701
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_185

    const/4 v0, 0x1

    :goto_14d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    iput-object v0, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 2708
    :cond_157
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_184

    .line 2709
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_187

    const/4 v4, 0x1

    :goto_176
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v14, 0x1

    if-ne v5, v14, :cond_189

    const/4 v5, 0x1

    :goto_17e
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    iput-object v0, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 2717
    :cond_184
    return-void

    .line 2701
    :cond_185
    const/4 v0, 0x0

    goto :goto_14d

    .line 2709
    :cond_187
    const/4 v4, 0x0

    goto :goto_176

    :cond_189
    const/4 v5, 0x0

    goto :goto_17e
.end method

.method private static isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 3
    .param p0, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 2769
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    const/high16 v1, 0x200000

    if-gt v0, v1, :cond_14

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static makeNodeId(II)J
    .registers 6
    .param p0, "accessibilityViewId"    # I
    .param p1, "virtualDescendantId"    # I

    .prologue
    .line 531
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 532
    const p1, 0x7fffffff

    .line 534
    :cond_6
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .prologue
    .line 2411
    sget-object v1, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2412
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_b

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_a
    return-object v0

    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_b
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0}, <init>()V

    goto :goto_a
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .param p0, "source"    # Landroid/view/View;

    .prologue
    .line 2384
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2385
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0}, setSource(Landroid/view/View;)V

    .line 2386
    return-object v0
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3
    .param p0, "root"    # Landroid/view/View;
    .param p1, "virtualDescendantId"    # I

    .prologue
    .line 2400
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2401
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0, p0, p1}, setSource(Landroid/view/View;I)V

    .line 2402
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2
    .param p0, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2424
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2425
    .local v0, "infoClone":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {v0, p0}, init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2426
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2260
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2261
    if-eqz p2, :cond_b

    .line 2262
    iget v0, p0, mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, mBooleanProperties:I

    .line 2266
    :goto_a
    return-void

    .line 2264
    :cond_b
    iget v0, p0, mBooleanProperties:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mBooleanProperties:I

    goto :goto_a
.end method


# virtual methods
.method public addAction(I)V
    .registers 5
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 993
    invoke-virtual {p0}, enforceNotSealed()V

    .line 995
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_21

    .line 996
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action is not a combination of the standard actions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_21
    invoke-direct {p0, p1}, addLegacyStandardActions(I)V

    .line 1001
    return-void
.end method

.method public addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 3
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 962
    invoke-virtual {p0}, enforceNotSealed()V

    .line 964
    if-nez p1, :cond_6

    .line 974
    :goto_5
    return-void

    .line 968
    :cond_6
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    .line 969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 972
    :cond_11
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 973
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public addChild(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 798
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, addChildInternal(Landroid/view/View;IZ)V

    .line 799
    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .registers 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 844
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, addChildInternal(Landroid/view/View;IZ)V

    .line 845
    return-void
.end method

.method public addChildUnchecked(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 808
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, addChildInternal(Landroid/view/View;IZ)V

    .line 809
    return-void
.end method

.method public canOpenPopup()Z
    .registers 2

    .prologue
    .line 1838
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 2286
    const/4 v0, 0x0

    return v0
.end method

.method protected enforceNotSealed()V
    .registers 3

    .prologue
    .line 2368
    invoke-virtual {p0}, isSealed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2372
    :cond_e
    return-void
.end method

.method protected enforceSealed()V
    .registers 3

    .prologue
    .line 2330
    invoke-virtual {p0}, isSealed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2334
    :cond_e
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2875
    if-ne p0, p1, :cond_5

    .line 2891
    :cond_4
    :goto_4
    return v1

    .line 2878
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 2879
    goto :goto_4

    .line 2881
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 2882
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 2884
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2885
    .local v0, "other":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-wide v4, p0, mSourceNodeId:J

    iget-wide v6, v0, mSourceNodeId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_22

    move v1, v2

    .line 2886
    goto :goto_4

    .line 2888
    :cond_22
    iget v3, p0, mWindowId:I

    iget v4, v0, mWindowId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 2889
    goto :goto_4
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    invoke-virtual {p0}, enforceSealed()V

    .line 1165
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1169
    :goto_f
    return-object v0

    .line 1168
    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1169
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_f
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .param p1, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    invoke-virtual {p0}, enforceSealed()V

    .line 1196
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1200
    :goto_f
    return-object v0

    .line 1199
    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1200
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_f
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "focus"    # I

    .prologue
    .line 641
    invoke-virtual {p0}, enforceSealed()V

    .line 642
    invoke-direct {p0, p1}, enforceValidFocusType(I)V

    .line 643
    iget-wide v0, p0, mSourceNodeId:J

    invoke-direct {p0, v0, v1}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 644
    const/4 v0, 0x0

    .line 646
    :goto_f
    return-object v0

    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_f
.end method

.method public focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9
    .param p1, "direction"    # I

    .prologue
    .line 665
    invoke-virtual {p0}, enforceSealed()V

    .line 666
    invoke-direct {p0, p1}, enforceValidFocusDirection(I)V

    .line 667
    iget-wide v0, p0, mSourceNodeId:J

    invoke-direct {p0, v0, v1}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    .line 668
    const/4 v0, 0x0

    .line 670
    :goto_f
    return-object v0

    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_f
.end method

.method public getActionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 894
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 897
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    goto :goto_8
.end method

.method public getActions()I
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 924
    const/4 v3, 0x0

    .line 926
    .local v3, "returnValue":I
    iget-object v5, p0, mActions:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    move v4, v3

    .line 938
    .end local v3    # "returnValue":I
    .local v4, "returnValue":I
    :goto_6
    return v4

    .line 930
    .end local v4    # "returnValue":I
    .restart local v3    # "returnValue":I
    :cond_7
    iget-object v5, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 931
    .local v1, "actionSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_24

    .line 932
    iget-object v5, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    .line 933
    .local v0, "actionId":I
    const/high16 v5, 0x200000

    if-gt v0, v5, :cond_21

    .line 934
    or-int/2addr v3, v0

    .line 931
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .end local v0    # "actionId":I
    :cond_24
    move v4, v3

    .line 938
    .end local v3    # "returnValue":I
    .restart local v4    # "returnValue":I
    goto :goto_6
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1298
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1300
    return-void
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1325
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1327
    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 10
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0}, enforceSealed()V

    .line 773
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_9

    .line 781
    :cond_8
    :goto_8
    return-object v0

    .line 776
    :cond_9
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 779
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    .line 780
    .local v4, "childId":J
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 781
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_8
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 754
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getChildId(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 742
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_a

    .line 743
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 745
    :cond_a
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildNodeIds()Landroid/util/LongArray;
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1911
    iget-object v0, p0, mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 2

    .prologue
    .line 1678
    iget-object v0, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-object v0
.end method

.method public getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 2

    .prologue
    .line 1704
    iget-object v0, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1989
    iget-object v0, p0, mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1980
    iget-object v0, p0, mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 2235
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mExtras:Landroid/os/Bundle;

    .line 2238
    :cond_b
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 2200
    iget v0, p0, mInputType:I

    return v0
.end method

.method public getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .prologue
    .line 2057
    invoke-virtual {p0}, enforceSealed()V

    .line 2058
    iget-wide v2, p0, mLabelForId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2059
    const/4 v0, 0x0

    .line 2062
    :goto_c
    return-object v0

    .line 2061
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 2062
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mLabelForId:J

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_c
.end method

.method public getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .prologue
    .line 2115
    invoke-virtual {p0}, enforceSealed()V

    .line 2116
    iget-wide v2, p0, mLabeledById:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2117
    const/4 v0, 0x0

    .line 2120
    :goto_c
    return-object v0

    .line 2119
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 2120
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mLabeledById:J

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_c
.end method

.method public getLiveRegion()I
    .registers 2

    .prologue
    .line 1789
    iget v0, p0, mLiveRegion:I

    return v0
.end method

.method public getMaxTextLength()I
    .registers 2

    .prologue
    .line 1075
    iget v0, p0, mMaxTextLength:I

    return v0
.end method

.method public getMovementGranularities()I
    .registers 2

    .prologue
    .line 1101
    iget v0, p0, mMovementGranularities:I

    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1885
    iget-object v0, p0, mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .prologue
    .line 1231
    invoke-virtual {p0}, enforceSealed()V

    .line 1232
    iget-wide v2, p0, mParentNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1233
    const/4 v0, 0x0

    .line 1236
    :goto_c
    return-object v0

    .line 1235
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1236
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mParentNodeId:J

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_c
.end method

.method public getParentNodeId()J
    .registers 3

    .prologue
    .line 1247
    iget-wide v0, p0, mParentNodeId:J

    return-wide v0
.end method

.method public getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 2

    .prologue
    .line 1727
    iget-object v0, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-object v0
.end method

.method public getSourceNodeId()J
    .registers 3

    .prologue
    .line 2297
    iget-wide v0, p0, mSourceNodeId:J

    return-wide v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1937
    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .registers 2

    .prologue
    .line 2172
    iget v0, p0, mTextSelectionEnd:I

    return v0
.end method

.method public getTextSelectionStart()I
    .registers 2

    .prologue
    .line 2163
    iget v0, p0, mTextSelectionStart:I

    return v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2154
    iget-object v0, p0, mViewIdResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .prologue
    .line 1212
    invoke-virtual {p0}, enforceSealed()V

    .line 1213
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1214
    const/4 v1, 0x0

    .line 1217
    :goto_c
    return-object v1

    .line 1216
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1217
    .local v0, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v1, p0, mConnectionId:I

    iget v2, p0, mWindowId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    goto :goto_c
.end method

.method public getWindowId()I
    .registers 2

    .prologue
    .line 680
    iget v0, p0, mWindowId:I

    return v0
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 2896
    const/16 v0, 0x1f

    .line 2897
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 2898
    .local v1, "result":I
    iget-wide v2, p0, mSourceNodeId:J

    invoke-static {v2, v3}, getAccessibilityViewId(J)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 2899
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, mSourceNodeId:J

    invoke-static {v4, v5}, getVirtualDescendantId(J)I

    move-result v3

    add-int v1, v2, v3

    .line 2900
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, mWindowId:I

    add-int v1, v2, v3

    .line 2901
    return v1
.end method

.method public isAccessibilityFocused()Z
    .registers 2

    .prologue
    .line 1477
    const/16 v0, 0x400

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .prologue
    .line 1352
    const/4 v0, 0x1

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 1377
    const/4 v0, 0x2

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 2

    .prologue
    .line 1527
    const/16 v0, 0x20

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isContentInvalid()Z
    .registers 2

    .prologue
    .line 1752
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isDismissable()Z
    .registers 2

    .prologue
    .line 1862
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .registers 2

    .prologue
    .line 1652
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1577
    const/16 v0, 0x80

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    .prologue
    .line 1402
    const/4 v0, 0x4

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 1427
    const/16 v0, 0x8

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .registers 2

    .prologue
    .line 1552
    const/16 v0, 0x40

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isMultiLine()Z
    .registers 2

    .prologue
    .line 1815
    const v0, 0x8000

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2

    .prologue
    .line 1602
    const/16 v0, 0x100

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .prologue
    .line 1627
    const/16 v0, 0x200

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .registers 2

    .prologue
    .line 2319
    iget-boolean v0, p0, mSealed:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 1502
    const/16 v0, 0x10

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .registers 2

    .prologue
    .line 1452
    const/16 v0, 0x800

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public performAction(I)Z
    .registers 10
    .param p1, "action"    # I

    .prologue
    .line 1117
    invoke-virtual {p0}, enforceSealed()V

    .line 1118
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1119
    const/4 v0, 0x0

    .line 1122
    :goto_c
    return v0

    .line 1121
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1122
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_c
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1140
    invoke-virtual {p0}, enforceSealed()V

    .line 1141
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1142
    const/4 v0, 0x0

    .line 1145
    :goto_c
    return v0

    .line 1144
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 1145
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_c
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 2437
    invoke-direct {p0}, clear()V

    .line 2438
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 2439
    return-void
.end method

.method public refresh()Z
    .registers 2

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, refresh(Z)Z

    move-result v0

    return v0
.end method

.method public refresh(Z)Z
    .registers 10
    .param p1, "bypassCache"    # Z

    .prologue
    const/4 v7, 0x0

    .line 697
    invoke-virtual {p0}, enforceSealed()V

    .line 698
    iget-wide v2, p0, mSourceNodeId:J

    invoke-direct {p0, v2, v3}, canPerformRequestOverConnection(J)Z

    move-result v2

    if-nez v2, :cond_d

    .line 709
    :cond_c
    :goto_c
    return v7

    .line 701
    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 702
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    iget v2, p0, mConnectionId:I

    iget v3, p0, mWindowId:I

    iget-wide v4, p0, mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 704
    .local v0, "refreshedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_c

    .line 707
    invoke-direct {p0, v0}, init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 708
    invoke-virtual {v0}, recycle()V

    .line 709
    const/4 v7, 0x1

    goto :goto_c
.end method

.method public removeAction(I)V
    .registers 3
    .param p1, "action"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1019
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1021
    invoke-static {p1}, getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-virtual {p0, v0}, removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 1022
    return-void
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 3
    .param p1, "action"    # Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .prologue
    .line 1039
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1041
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    if-nez p1, :cond_b

    .line 1042
    :cond_9
    const/4 v0, 0x0

    .line 1045
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a
.end method

.method public removeChild(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 826
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, removeChild(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public removeChild(Landroid/view/View;I)Z
    .registers 9
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    const/4 v5, 0x0

    .line 873
    invoke-virtual {p0}, enforceNotSealed()V

    .line 874
    iget-object v0, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 875
    .local v0, "childIds":Landroid/util/LongArray;
    if-nez v0, :cond_9

    .line 886
    :cond_8
    :goto_8
    return v5

    .line 878
    :cond_9
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v4

    .line 880
    .local v4, "rootAccessibilityViewId":I
    :goto_f
    invoke-static {v4, p2}, makeNodeId(II)J

    move-result-wide v2

    .line 881
    .local v2, "childNodeId":J
    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    move-result v1

    .line 882
    .local v1, "index":I
    if-ltz v1, :cond_8

    .line 885
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->remove(I)V

    .line 886
    const/4 v5, 0x1

    goto :goto_8

    .line 878
    .end local v1    # "index":I
    .end local v2    # "childNodeId":J
    .end local v4    # "rootAccessibilityViewId":I
    :cond_1e
    const v4, 0x7fffffff

    goto :goto_f
.end method

.method public setAccessibilityFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .prologue
    .line 1493
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1494
    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1315
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1316
    iget-object v0, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1317
    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1342
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1343
    iget-object v0, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1344
    return-void
.end method

.method public setCanOpenPopup(Z)V
    .registers 3
    .param p1, "opensPopup"    # Z

    .prologue
    .line 1852
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1853
    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1854
    return-void
.end method

.method public setCheckable(Z)V
    .registers 3
    .param p1, "checkable"    # Z

    .prologue
    .line 1368
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1369
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 1393
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1394
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 1927
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1928
    iput-object p1, p0, mClassName:Ljava/lang/CharSequence;

    .line 1929
    return-void
.end method

.method public setClickable(Z)V
    .registers 3
    .param p1, "clickable"    # Z

    .prologue
    .line 1543
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1544
    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .registers 2
    .param p1, "collectionInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .prologue
    .line 1693
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1694
    iput-object p1, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 1695
    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .registers 2
    .param p1, "collectionItemInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .prologue
    .line 1717
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1718
    iput-object p1, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 1719
    return-void
.end method

.method public setConnectionId(I)V
    .registers 2
    .param p1, "connectionId"    # I

    .prologue
    .line 2277
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2278
    iput p1, p0, mConnectionId:I

    .line 2279
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 2005
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2006
    iput-object p1, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 2007
    return-void
.end method

.method public setContentInvalid(Z)V
    .registers 3
    .param p1, "contentInvalid"    # Z

    .prologue
    .line 1767
    const/high16 v0, 0x10000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1768
    return-void
.end method

.method public setDismissable(Z)V
    .registers 3
    .param p1, "dismissable"    # Z

    .prologue
    .line 1876
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1877
    return-void
.end method

.method public setEditable(Z)V
    .registers 3
    .param p1, "editable"    # Z

    .prologue
    .line 1668
    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1669
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1593
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1594
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 1970
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1971
    iput-object p1, p0, mError:Ljava/lang/CharSequence;

    .line 1972
    return-void
.end method

.method public setFocusable(Z)V
    .registers 3
    .param p1, "focusable"    # Z

    .prologue
    .line 1418
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1419
    return-void
.end method

.method public setFocused(Z)V
    .registers 3
    .param p1, "focused"    # Z

    .prologue
    .line 1443
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1444
    return-void
.end method

.method public setInputType(I)V
    .registers 2
    .param p1, "inputType"    # I

    .prologue
    .line 2217
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2218
    iput p1, p0, mInputType:I

    .line 2219
    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .registers 3
    .param p1, "labeled"    # Landroid/view/View;

    .prologue
    .line 2016
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setLabelFor(Landroid/view/View;I)V

    .line 2017
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 2039
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2040
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 2042
    .local v0, "rootAccessibilityViewId":I
    :goto_9
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mLabelForId:J

    .line 2043
    return-void

    .line 2040
    .end local v0    # "rootAccessibilityViewId":I
    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .registers 3
    .param p1, "label"    # Landroid/view/View;

    .prologue
    .line 2074
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setLabeledBy(Landroid/view/View;I)V

    .line 2075
    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 2097
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2098
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 2100
    .local v0, "rootAccessibilityViewId":I
    :goto_9
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mLabeledById:J

    .line 2101
    return-void

    .line 2098
    .end local v0    # "rootAccessibilityViewId":I
    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setLiveRegion(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 1805
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1806
    iput p1, p0, mLiveRegion:I

    .line 1807
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 3
    .param p1, "longClickable"    # Z

    .prologue
    .line 1568
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1569
    return-void
.end method

.method public setMaxTextLength(I)V
    .registers 2
    .param p1, "max"    # I

    .prologue
    .line 1064
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1065
    iput p1, p0, mMaxTextLength:I

    .line 1066
    return-void
.end method

.method public setMovementGranularities(I)V
    .registers 2
    .param p1, "granularities"    # I

    .prologue
    .line 1091
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1092
    iput p1, p0, mMovementGranularities:I

    .line 1093
    return-void
.end method

.method public setMultiLine(Z)V
    .registers 3
    .param p1, "multiLine"    # Z

    .prologue
    .line 1829
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1830
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 1901
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1902
    iput-object p1, p0, mPackageName:Ljava/lang/CharSequence;

    .line 1903
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1263
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setParent(Landroid/view/View;I)V

    .line 1264
    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    .line 1286
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1287
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 1289
    .local v0, "rootAccessibilityViewId":I
    :goto_9
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mParentNodeId:J

    .line 1290
    return-void

    .line 1287
    .end local v0    # "rootAccessibilityViewId":I
    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setPassword(Z)V
    .registers 3
    .param p1, "password"    # Z

    .prologue
    .line 1618
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1619
    return-void
.end method

.method public setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .registers 2
    .param p1, "rangeInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .prologue
    .line 1741
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1742
    iput-object p1, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 1743
    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z

    .prologue
    .line 1643
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1644
    return-void
.end method

.method public setSealed(Z)V
    .registers 2
    .param p1, "sealed"    # Z

    .prologue
    .line 2308
    iput-boolean p1, p0, mSealed:Z

    .line 2309
    return-void
.end method

.method public setSelected(Z)V
    .registers 3
    .param p1, "selected"    # Z

    .prologue
    .line 1518
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1519
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 599
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, setSource(Landroid/view/View;I)V

    .line 600
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    const v2, 0x7fffffff

    .line 622
    invoke-virtual {p0}, enforceNotSealed()V

    .line 623
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v1

    :goto_c
    iput v1, p0, mWindowId:I

    .line 624
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 626
    .local v0, "rootAccessibilityViewId":I
    :goto_14
    invoke-static {v0, p2}, makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, mSourceNodeId:J

    .line 627
    return-void

    .end local v0    # "rootAccessibilityViewId":I
    :cond_1b
    move v1, v2

    .line 623
    goto :goto_c

    :cond_1d
    move v0, v2

    .line 624
    goto :goto_14
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1953
    invoke-virtual {p0}, enforceNotSealed()V

    .line 1954
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    .line 1955
    return-void
.end method

.method public setTextSelection(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2189
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2190
    iput p1, p0, mTextSelectionStart:I

    .line 2191
    iput p2, p0, mTextSelectionEnd:I

    .line 2192
    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "viewIdResName"    # Ljava/lang/String;

    .prologue
    .line 2137
    invoke-virtual {p0}, enforceNotSealed()V

    .line 2138
    iput-object p1, p0, mViewIdResourceName:Ljava/lang/String;

    .line 2139
    return-void
.end method

.method public setVisibleToUser(Z)V
    .registers 3
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 1468
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 1469
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2907
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; boundsInParent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; boundsInScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2943
    const-string v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2944
    const-string v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2945
    const-string v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2946
    const-string v1, "; error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mError:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2947
    const-string v1, "; maxTextLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mMaxTextLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2948
    const-string v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2949
    const-string v1, "; viewIdResName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    const-string v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isCheckable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2952
    const-string v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2953
    const-string v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2954
    const-string v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2955
    const-string v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2956
    const-string v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2957
    const-string v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isLongClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2958
    const-string v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2959
    const-string v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2960
    const-string v1, "; scrollable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2961
    const-string v1, "; actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2963
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 15
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2450
    invoke-virtual {p0}, isSealed()Z

    move-result v6

    if-eqz v6, :cond_98

    move v6, v7

    :goto_9
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2451
    iget-wide v10, p0, mSourceNodeId:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2452
    iget v6, p0, mWindowId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2453
    iget-wide v10, p0, mParentNodeId:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2454
    iget-wide v10, p0, mLabelForId:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2455
    iget-wide v10, p0, mLabeledById:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2456
    iget v6, p0, mConnectionId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2458
    iget-object v2, p0, mChildNodeIds:Landroid/util/LongArray;

    .line 2459
    .local v2, "childIds":Landroid/util/LongArray;
    if-nez v2, :cond_9b

    .line 2460
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2469
    :cond_31
    iget-object v6, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2470
    iget-object v6, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2471
    iget-object v6, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2472
    iget-object v6, p0, mBoundsInParent:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2474
    iget-object v6, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2475
    iget-object v6, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2476
    iget-object v6, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2477
    iget-object v6, p0, mBoundsInScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2479
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_d4

    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d4

    .line 2480
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2481
    .local v1, "actionCount":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2483
    const/4 v4, 0x0

    .line 2484
    .local v4, "defaultLegacyStandardActions":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_80
    if-ge v5, v1, :cond_af

    .line 2485
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2486
    .local v0, "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 2487
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    or-int/2addr v4, v6

    .line 2484
    :cond_95
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "actionCount":I
    .end local v2    # "childIds":Landroid/util/LongArray;
    .end local v4    # "defaultLegacyStandardActions":I
    .end local v5    # "i":I
    :cond_98
    move v6, v8

    .line 2450
    goto/16 :goto_9

    .line 2462
    .restart local v2    # "childIds":Landroid/util/LongArray;
    :cond_9b
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v3

    .line 2463
    .local v3, "childIdsSize":I
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2464
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a3
    if-ge v5, v3, :cond_31

    .line 2465
    invoke-virtual {v2, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v10

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 2464
    add-int/lit8 v5, v5, 0x1

    goto :goto_a3

    .line 2490
    .end local v3    # "childIdsSize":I
    .restart local v1    # "actionCount":I
    .restart local v4    # "defaultLegacyStandardActions":I
    :cond_af
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2492
    const/4 v5, 0x0

    :goto_b3
    if-ge v5, v1, :cond_d7

    .line 2493
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 2494
    .restart local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-static {v0}, isDefaultLegacyStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v6

    if-nez v6, :cond_d1

    .line 2495
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2496
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2492
    :cond_d1
    add-int/lit8 v5, v5, 0x1

    goto :goto_b3

    .line 2500
    .end local v0    # "action":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .end local v1    # "actionCount":I
    .end local v4    # "defaultLegacyStandardActions":I
    .end local v5    # "i":I
    :cond_d4
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2503
    :cond_d7
    iget v6, p0, mMaxTextLength:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    iget v6, p0, mMovementGranularities:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2505
    iget v6, p0, mBooleanProperties:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2507
    iget-object v6, p0, mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2508
    iget-object v6, p0, mClassName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2509
    iget-object v6, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2510
    iget-object v6, p0, mError:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2511
    iget-object v6, p0, mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2512
    iget-object v6, p0, mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2514
    iget v6, p0, mTextSelectionStart:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2515
    iget v6, p0, mTextSelectionEnd:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    iget v6, p0, mInputType:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2517
    iget v6, p0, mLiveRegion:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2519
    iget-object v6, p0, mExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_1c3

    .line 2520
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2521
    iget-object v6, p0, mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2526
    :goto_124
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v6, :cond_1c8

    .line 2527
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2528
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2529
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2530
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2531
    iget-object v6, p0, mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2536
    :goto_14f
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v6, :cond_1ce

    .line 2537
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2538
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2539
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2540
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    move-result v6

    if-eqz v6, :cond_1cc

    move v6, v7

    :goto_171
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2541
    iget-object v6, p0, mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2546
    :goto_17d
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v6, :cond_1d6

    .line 2547
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2548
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2549
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2550
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2551
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2552
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v6

    if-eqz v6, :cond_1d2

    move v6, v7

    :goto_1b1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2553
    iget-object v6, p0, mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1d4

    :goto_1bc
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2560
    :goto_1bf
    invoke-virtual {p0}, recycle()V

    .line 2561
    return-void

    .line 2523
    :cond_1c3
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_124

    .line 2533
    :cond_1c8
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14f

    :cond_1cc
    move v6, v8

    .line 2540
    goto :goto_171

    .line 2543
    :cond_1ce
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17d

    :cond_1d2
    move v6, v8

    .line 2552
    goto :goto_1b1

    :cond_1d4
    move v7, v8

    .line 2553
    goto :goto_1bc

    .line 2555
    :cond_1d6
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1bf
.end method
