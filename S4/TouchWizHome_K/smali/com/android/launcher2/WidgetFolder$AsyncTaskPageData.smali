.class Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;
.super Ljava/lang/Object;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WidgetFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncTaskPageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;
    }
.end annotation


# instance fields
.field final cellHeight:I

.field final cellWidth:I

.field final doInBackgroundCallback:Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;

.field generatedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field final layout:Landroid/widget/GridLayout;

.field final page:I

.field final postExecuteCallback:Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;


# direct methods
.method constructor <init>(Landroid/widget/GridLayout;ILjava/util/List;IILcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;)V
    .locals 1
    .param p1, "layout2"    # Landroid/widget/GridLayout;
    .param p2, "p"    # I
    .param p4, "cw"    # I
    .param p5, "ch"    # I
    .param p6, "bgR"    # Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;
    .param p7, "postR"    # Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;II",
            "Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;",
            "Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 540
    .local p3, "items2":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput p2, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->page:I

    .line 542
    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->layout:Landroid/widget/GridLayout;

    .line 543
    iput-object p3, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 545
    iput p4, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellWidth:I

    .line 546
    iput p5, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellHeight:I

    .line 547
    iput-object p6, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->doInBackgroundCallback:Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;

    .line 548
    iput-object p7, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->postExecuteCallback:Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;

    .line 549
    return-void
.end method


# virtual methods
.method cleanup(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "cancelled"    # Z

    .prologue
    .line 552
    # getter for: Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/WidgetFolder;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 557
    :cond_0
    return-void
.end method
