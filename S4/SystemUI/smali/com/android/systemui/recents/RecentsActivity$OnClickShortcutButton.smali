.class final Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickShortcutButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recents/RecentsActivity;
    .param p2, "x1"    # Lcom/android/systemui/recents/RecentsActivity$1;

    .prologue
    .line 1312
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1315
    const/4 v2, 0x0

    .line 1317
    .local v2, "pos":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1337
    :goto_0
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/recents/RecentsActivity;->access$900(Lcom/android/systemui/recents/RecentsActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1341
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    # getter for: Lcom/android/systemui/recents/RecentsActivity;->mShortcutComponentNames:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/recents/RecentsActivity;->access$900(Lcom/android/systemui/recents/RecentsActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1342
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    const v3, 0x10204000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1346
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1348
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickShortcutButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 1320
    :pswitch_1
    const/4 v2, 0x0

    .line 1321
    goto :goto_0

    .line 1324
    :pswitch_2
    const/4 v2, 0x1

    .line 1325
    goto :goto_0

    .line 1328
    :pswitch_3
    const/4 v2, 0x2

    .line 1329
    goto :goto_0

    .line 1332
    :pswitch_4
    const/4 v2, 0x3

    goto :goto_0

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "StatusBar_Recents"

    const-string v4, "Activity(ShortCut) Not Found"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1317
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01f6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
