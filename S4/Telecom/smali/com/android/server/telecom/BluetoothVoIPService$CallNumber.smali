.class final Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;
.super Ljava/lang/Object;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothVoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallNumber"
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/BluetoothVoIPService;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;

    .line 841
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mType:I

    .line 844
    iput-object p2, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;

    .line 845
    iput p3, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mType:I

    .line 846
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/BluetoothVoIPService;Ljava/lang/String;IB)V
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;-><init>(Lcom/android/server/telecom/BluetoothVoIPService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;)I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mType:I

    return v0
.end method
