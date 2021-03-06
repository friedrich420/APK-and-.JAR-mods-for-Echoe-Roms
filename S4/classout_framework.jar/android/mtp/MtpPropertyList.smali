.class Landroid/mtp/MtpPropertyList;
.super Ljava/lang/Object;
.source "MtpPropertyList.java"


# instance fields
.field private mCount:I

.field public final mDataTypes:[I

.field public mLongValues:[J

.field private final mMaxCount:I

.field public final mObjectHandles:[I

.field public final mPropertyCodes:[I

.field public mResult:I

.field public mStringValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "maxCount"    # I
    .param p2, "result"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, mMaxCount:I

    .line 46
    iput p2, p0, mResult:I

    .line 47
    new-array v0, p1, [I

    iput-object v0, p0, mObjectHandles:[I

    .line 48
    new-array v0, p1, [I

    iput-object v0, p0, mPropertyCodes:[I

    .line 49
    new-array v0, p1, [I

    iput-object v0, p0, mDataTypes:[I

    .line 51
    return-void
.end method


# virtual methods
.method public append(IIIJ)V
    .registers 8
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "type"    # I
    .param p4, "value"    # J

    .prologue
    .line 54
    iget v0, p0, mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mCount:I

    .line 55
    .local v0, "index":I
    iget-object v1, p0, mLongValues:[J

    if-nez v1, :cond_10

    .line 56
    iget v1, p0, mMaxCount:I

    new-array v1, v1, [J

    iput-object v1, p0, mLongValues:[J

    .line 58
    :cond_10
    iget-object v1, p0, mObjectHandles:[I

    aput p1, v1, v0

    .line 59
    iget-object v1, p0, mPropertyCodes:[I

    aput p2, v1, v0

    .line 60
    iget-object v1, p0, mDataTypes:[I

    aput p3, v1, v0

    .line 61
    iget-object v1, p0, mLongValues:[J

    aput-wide p4, v1, v0

    .line 62
    return-void
.end method

.method public append(IILjava/lang/String;)V
    .registers 7
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    iget v0, p0, mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mCount:I

    .line 66
    .local v0, "index":I
    iget-object v1, p0, mStringValues:[Ljava/lang/String;

    if-nez v1, :cond_10

    .line 67
    iget v1, p0, mMaxCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, mStringValues:[Ljava/lang/String;

    .line 69
    :cond_10
    iget-object v1, p0, mObjectHandles:[I

    aput p1, v1, v0

    .line 70
    iget-object v1, p0, mPropertyCodes:[I

    aput p2, v1, v0

    .line 71
    iget-object v1, p0, mDataTypes:[I

    const v2, 0xffff

    aput v2, v1, v0

    .line 72
    iget-object v1, p0, mStringValues:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 73
    return-void
.end method

.method public setResult(I)V
    .registers 2
    .param p1, "result"    # I

    .prologue
    .line 76
    iput p1, p0, mResult:I

    .line 77
    return-void
.end method
