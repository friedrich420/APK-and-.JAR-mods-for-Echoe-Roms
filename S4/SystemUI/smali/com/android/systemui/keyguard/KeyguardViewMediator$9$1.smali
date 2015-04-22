.class Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->reloadLockSound(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$pathLock:Ljava/lang/String;

.field final synthetic val$pathUnlock:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$9;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2528
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->val$pathLock:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->val$pathUnlock:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2531
    const-string v1, "KeyguardViewMediator"

    const-string v2, "reloadLockSound() - run"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->val$pathLock:Ljava/lang/String;

    .line 2533
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2534
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2535
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->val$cr:Landroid/content/ContentResolver;

    const-string v2, "lock_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2537
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 2538
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5302(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 2540
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v1

    if-nez v1, :cond_3

    .line 2541
    :cond_2
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load lock sound from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->val$pathUnlock:Ljava/lang/String;

    .line 2545
    if-eqz v0, :cond_5

    .line 2546
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2547
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->val$cr:Landroid/content/ContentResolver;

    const-string v2, "unlock_sound"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2549
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 2550
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;
    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/media/SoundPool;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUnlockSoundId:I
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5502(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 2552
    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9$1;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$9;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundId:I
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$5300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)I

    move-result v1

    if-nez v1, :cond_7

    .line 2553
    :cond_6
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to load unlock sound from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_7
    return-void
.end method
