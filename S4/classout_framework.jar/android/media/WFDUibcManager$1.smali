.class Landroid/media/WFDUibcManager$1;
.super Landroid/view/OrientationEventListener;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/WFDUibcManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;Landroid/content/Context;)V
    .registers 3
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 104
    iput-object p1, p0, this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 107
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 109
    iget-object v0, p0, this$0:Landroid/media/WFDUibcManager;

    # setter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v0, p1}, Landroid/media/WFDUibcManager;->access$002(Landroid/media/WFDUibcManager;I)I

    .line 111
    :cond_8
    return-void
.end method
