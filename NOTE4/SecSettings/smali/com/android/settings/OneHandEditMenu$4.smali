.class Lcom/android/settings/OneHandEditMenu$4;
.super Ljava/lang/Object;
.source "OneHandEditMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandEditMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandEditMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandEditMenu;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu$4;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v3, 0x0

    .line 203
    const/4 v1, 0x1

    .line 204
    .local v1, "retVal":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 206
    .local v0, "dragEvent":I
    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu$4;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/OneHandEditMenu;->access$200(Lcom/android/settings/OneHandEditMenu;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 231
    .end local v1    # "retVal":Z
    :goto_0
    return v1

    .line 207
    .restart local v1    # "retVal":Z
    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu$4;->this$0:Lcom/android/settings/OneHandEditMenu;

    # getter for: Lcom/android/settings/OneHandEditMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/settings/OneHandEditMenu;->access$200(Lcom/android/settings/OneHandEditMenu;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 210
    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu$4;->this$0:Lcom/android/settings/OneHandEditMenu;

    # invokes: Lcom/android/settings/OneHandEditMenu;->changeQuickSettingsByBar(Landroid/view/View;)V
    invoke-static {v2, p1}, Lcom/android/settings/OneHandEditMenu;->access$800(Lcom/android/settings/OneHandEditMenu;Landroid/view/View;)V

    .line 211
    iget-object v2, p0, Lcom/android/settings/OneHandEditMenu$4;->this$0:Lcom/android/settings/OneHandEditMenu;

    # invokes: Lcom/android/settings/OneHandEditMenu;->updateQuickSettingsList()V
    invoke-static {v2}, Lcom/android/settings/OneHandEditMenu;->access$000(Lcom/android/settings/OneHandEditMenu;)V

    goto :goto_0

    .line 215
    :pswitch_3
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 224
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
