.class Lcom/android/settings/motion2013/AirMotionEnabler$6;
.super Ljava/lang/Object;
.source "AirMotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/AirMotionEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionEnabler;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$6;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_glance_view"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 247
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$6;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$6;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$6;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_item_move"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$6;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_clip"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$6;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_call_accept"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$6;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    # invokes: Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$300(Lcom/android/settings/motion2013/AirMotionEnabler;Z)V

    .line 258
    return-void
.end method
