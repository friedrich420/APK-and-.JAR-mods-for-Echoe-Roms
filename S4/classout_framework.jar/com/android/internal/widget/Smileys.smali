.class public Lcom/android/internal/widget/Smileys;
.super Ljava/lang/Object;
.source "Smileys.java"


# static fields
.field public static ANGEL:I

.field public static COOL:I

.field public static CRYING:I

.field public static EMBARRASSED:I

.field public static FOOT_IN_MOUTH:I

.field public static HAPPY:I

.field public static KISSING:I

.field public static LAUGHING:I

.field public static LIPS_ARE_SEALED:I

.field public static MONEY_MOUTH:I

.field public static SAD:I

.field public static SURPRISED:I

.field public static TONGUE_STICKING_OUT:I

.field public static UNDECIDED:I

.field public static WINKING:I

.field public static WTF:I

.field public static YELLING:I

.field private static final sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    sput-object v0, sIconIds:[I

    .line 45
    const/4 v0, 0x0

    sput v0, HAPPY:I

    .line 46
    const/4 v0, 0x1

    sput v0, SAD:I

    .line 47
    const/4 v0, 0x2

    sput v0, WINKING:I

    .line 48
    const/4 v0, 0x3

    sput v0, TONGUE_STICKING_OUT:I

    .line 49
    const/4 v0, 0x4

    sput v0, SURPRISED:I

    .line 50
    const/4 v0, 0x5

    sput v0, KISSING:I

    .line 51
    const/4 v0, 0x6

    sput v0, YELLING:I

    .line 52
    const/4 v0, 0x7

    sput v0, COOL:I

    .line 53
    const/16 v0, 0x8

    sput v0, MONEY_MOUTH:I

    .line 54
    const/16 v0, 0x9

    sput v0, FOOT_IN_MOUTH:I

    .line 55
    const/16 v0, 0xa

    sput v0, EMBARRASSED:I

    .line 56
    const/16 v0, 0xb

    sput v0, ANGEL:I

    .line 57
    const/16 v0, 0xc

    sput v0, UNDECIDED:I

    .line 58
    const/16 v0, 0xd

    sput v0, CRYING:I

    .line 59
    const/16 v0, 0xe

    sput v0, LIPS_ARE_SEALED:I

    .line 60
    const/16 v0, 0xf

    sput v0, LAUGHING:I

    .line 61
    const/16 v0, 0x10

    sput v0, WTF:I

    return-void

    .line 25
    :array_46
    .array-data 4
        0x1080326
        0x108032b
        0x108032f
        0x108032d
        0x108032c
        0x1080327
        0x1080331
        0x1080322
        0x108032a
        0x1080325
        0x1080324
        0x1080321
        0x108032e
        0x1080323
        0x1080329
        0x1080328
        0x1080330
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .registers 2
    .param p0, "which"    # I

    .prologue
    .line 64
    sget-object v0, sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
