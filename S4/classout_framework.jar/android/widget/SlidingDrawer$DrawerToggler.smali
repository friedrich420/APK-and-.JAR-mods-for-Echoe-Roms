.class Landroid/widget/SlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "SlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SlidingDrawer;


# direct methods
.method private constructor <init>(Landroid/widget/SlidingDrawer;)V
    .registers 2

    .prologue
    .line 968
    iput-object p1, p0, this$0:Landroid/widget/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SlidingDrawer;Landroid/widget/SlidingDrawer$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/SlidingDrawer;
    .param p2, "x1"    # Landroid/widget/SlidingDrawer$1;

    .prologue
    .line 968
    invoke-direct {p0, p1}, <init>(Landroid/widget/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 970
    iget-object v0, p0, this$0:Landroid/widget/SlidingDrawer;

    invoke-static {v0}, Landroid/widget/SlidingDrawer;->access$200(Landroid/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 982
    :goto_8
    return-void

    .line 977
    :cond_9
    iget-object v0, p0, this$0:Landroid/widget/SlidingDrawer;

    invoke-static {v0}, Landroid/widget/SlidingDrawer;->access$300(Landroid/widget/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 978
    iget-object v0, p0, this$0:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    goto :goto_8

    .line 980
    :cond_17
    iget-object v0, p0, this$0:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_8
.end method
