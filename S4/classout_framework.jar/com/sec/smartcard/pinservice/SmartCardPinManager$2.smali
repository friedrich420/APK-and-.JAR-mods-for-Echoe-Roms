.class Lcom/sec/smartcard/pinservice/SmartCardPinManager$2;
.super Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;
.source "SmartCardPinManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/smartcard/pinservice/SmartCardPinManager;->getPinSync()[C
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

.field final synthetic val$cv:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Landroid/os/ConditionVariable;)V
    .registers 3

    .prologue
    .line 339
    iput-object p1, p0, this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    iput-object p2, p0, val$cv:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Lcom/sec/smartcard/pinservice/SmartCardPinManager$PinCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCancelled()V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C

    .line 351
    iget-object v0, p0, this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 352
    iget-object v0, p0, val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 353
    return-void
.end method

.method public onUserEnteredPin([C)V
    .registers 4
    .param p1, "pin"    # [C

    .prologue
    .line 343
    iget-object v0, p0, this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    invoke-static {v0, p1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C

    .line 344
    iget-object v0, p0, this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 345
    iget-object v0, p0, val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 346
    return-void
.end method

.method public onUserPinError(I)V
    .registers 4
    .param p1, "error"    # I

    .prologue
    .line 357
    iget-object v0, p0, this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mPin:[C
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$302(Lcom/sec/smartcard/pinservice/SmartCardPinManager;[C)[C

    .line 358
    iget-object v0, p0, this$0:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    const/4 v1, 0x1

    # setter for: Lcom/sec/smartcard/pinservice/SmartCardPinManager;->mIsCallbackCalled:Z
    invoke-static {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->access$402(Lcom/sec/smartcard/pinservice/SmartCardPinManager;Z)Z

    .line 359
    iget-object v0, p0, val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 360
    return-void
.end method
