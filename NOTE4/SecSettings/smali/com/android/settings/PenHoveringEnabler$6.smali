.class Lcom/android/settings/PenHoveringEnabler$6;
.super Ljava/lang/Object;
.source "PenHoveringEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenHoveringEnabler;->makeTalkBackMagnificationDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenHoveringEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/PenHoveringEnabler;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/settings/PenHoveringEnabler$6;->this$0:Lcom/android/settings/PenHoveringEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/settings/PenHoveringEnabler$6;->this$0:Lcom/android/settings/PenHoveringEnabler;

    # getter for: Lcom/android/settings/PenHoveringEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/PenHoveringEnabler;->access$100(Lcom/android/settings/PenHoveringEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PenHoveringEnabler$6;->this$0:Lcom/android/settings/PenHoveringEnabler;

    # getter for: Lcom/android/settings/PenHoveringEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/PenHoveringEnabler;->access$100(Lcom/android/settings/PenHoveringEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenHoveringEnabler$6;->this$0:Lcom/android/settings/PenHoveringEnabler;

    # getter for: Lcom/android/settings/PenHoveringEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/PenHoveringEnabler;->access$000(Lcom/android/settings/PenHoveringEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 306
    :cond_1
    return-void
.end method
