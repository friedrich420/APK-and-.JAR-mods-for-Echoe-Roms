.class public Landroid/content/IntentFilter;
.super Ljava/lang/Object;
.source "IntentFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IntentFilter$AuthorityEntry;,
        Landroid/content/IntentFilter$MalformedMimeTypeException;
    }
.end annotation


# static fields
.field private static final ACTION_STR:Ljava/lang/String; = "action"

.field private static final AUTH_STR:Ljava/lang/String; = "auth"

.field private static final CAT_STR:Ljava/lang/String; = "cat"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOST_STR:Ljava/lang/String; = "host"

.field private static final LITERAL_STR:Ljava/lang/String; = "literal"

.field public static final MATCH_ADJUSTMENT_MASK:I = 0xffff

.field public static final MATCH_ADJUSTMENT_NORMAL:I = 0x8000

.field public static final MATCH_CATEGORY_EMPTY:I = 0x100000

.field public static final MATCH_CATEGORY_HOST:I = 0x300000

.field public static final MATCH_CATEGORY_MASK:I = 0xfff0000

.field public static final MATCH_CATEGORY_PATH:I = 0x500000

.field public static final MATCH_CATEGORY_PORT:I = 0x400000

.field public static final MATCH_CATEGORY_SCHEME:I = 0x200000

.field public static final MATCH_CATEGORY_SCHEME_SPECIFIC_PART:I = 0x580000

.field public static final MATCH_CATEGORY_TYPE:I = 0x600000

.field private static final NAME_STR:Ljava/lang/String; = "name"

.field public static final NO_MATCH_ACTION:I = -0x3

.field public static final NO_MATCH_CATEGORY:I = -0x4

.field public static final NO_MATCH_DATA:I = -0x2

.field public static final NO_MATCH_TYPE:I = -0x1

.field private static final PATH_STR:Ljava/lang/String; = "path"

.field private static final PORT_STR:Ljava/lang/String; = "port"

.field private static final PREFIX_STR:Ljava/lang/String; = "prefix"

.field private static final SCHEME_STR:Ljava/lang/String; = "scheme"

.field private static final SGLOB_STR:Ljava/lang/String; = "sglob"

.field private static final SSP_STR:Ljava/lang/String; = "ssp"

.field public static final SYSTEM_HIGH_PRIORITY:I = 0x3e8

.field public static final SYSTEM_LOW_PRIORITY:I = -0x3e8

.field private static final TYPE_STR:Ljava/lang/String; = "type"


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSchemeSpecificParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSchemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPartialTypes:Z

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1553
    new-instance v0, Landroid/content/IntentFilter$1;

    invoke-direct {v0}, Landroid/content/IntentFilter$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object v0, p0, mCategories:Ljava/util/ArrayList;

    .line 253
    iput-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    .line 254
    iput-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 255
    iput-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    .line 256
    iput-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    .line 257
    iput-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    .line 258
    iput-boolean v1, p0, mHasPartialTypes:Z

    .line 356
    iput v1, p0, mPriority:I

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 358
    return-void
.end method

.method public constructor <init>(Landroid/content/IntentFilter;)V
    .registers 4
    .param p1, "o"    # Landroid/content/IntentFilter;

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object v0, p0, mCategories:Ljava/util/ArrayList;

    .line 253
    iput-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    .line 254
    iput-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 255
    iput-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    .line 256
    iput-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    .line 257
    iput-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasPartialTypes:Z

    .line 403
    iget v0, p1, mPriority:I

    iput v0, p0, mPriority:I

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, mActions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 405
    iget-object v0, p1, mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, mCategories:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mCategories:Ljava/util/ArrayList;

    .line 408
    :cond_2d
    iget-object v0, p1, mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, mDataTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    .line 411
    :cond_3a
    iget-object v0, p1, mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, mDataSchemes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    .line 414
    :cond_47
    iget-object v0, p1, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 417
    :cond_54
    iget-object v0, p1, mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_61

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, mDataAuthorities:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    .line 420
    :cond_61
    iget-object v0, p1, mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_6e

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, mDataPaths:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    .line 423
    :cond_6e
    iget-boolean v0, p1, mHasPartialTypes:Z

    iput-boolean v0, p0, mHasPartialTypes:Z

    .line 424
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object v3, p0, mCategories:Ljava/util/ArrayList;

    .line 253
    iput-object v3, p0, mDataSchemes:Ljava/util/ArrayList;

    .line 254
    iput-object v3, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 255
    iput-object v3, p0, mDataAuthorities:Ljava/util/ArrayList;

    .line 256
    iput-object v3, p0, mDataPaths:Ljava/util/ArrayList;

    .line 257
    iput-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    .line 258
    iput-boolean v2, p0, mHasPartialTypes:Z

    .line 1646
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mActions:Ljava/util/ArrayList;

    .line 1647
    iget-object v3, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_31

    .line 1649
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mCategories:Ljava/util/ArrayList;

    .line 1650
    iget-object v3, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1652
    :cond_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_43

    .line 1653
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mDataSchemes:Ljava/util/ArrayList;

    .line 1654
    iget-object v3, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1656
    :cond_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_55

    .line 1657
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    .line 1658
    iget-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1660
    :cond_55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1661
    .local v0, "N":I
    if-lez v0, :cond_72

    .line 1662
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1663
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_63
    if-ge v1, v0, :cond_72

    .line 1664
    iget-object v3, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 1667
    .end local v1    # "i":I
    :cond_72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1668
    if-lez v0, :cond_8f

    .line 1669
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, mDataAuthorities:Ljava/util/ArrayList;

    .line 1670
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_80
    if-ge v1, v0, :cond_8f

    .line 1671
    iget-object v3, p0, mDataAuthorities:Ljava/util/ArrayList;

    new-instance v4, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-direct {v4, p1}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 1674
    .end local v1    # "i":I
    :cond_8f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1675
    if-lez v0, :cond_ac

    .line 1676
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, mDataPaths:Ljava/util/ArrayList;

    .line 1677
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9d
    if-ge v1, v0, :cond_ac

    .line 1678
    iget-object v3, p0, mDataPaths:Ljava/util/ArrayList;

    new-instance v4, Landroid/os/PatternMatcher;

    invoke-direct {v4, p1}, Landroid/os/PatternMatcher;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .line 1681
    .end local v1    # "i":I
    :cond_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, mPriority:I

    .line 1682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-lez v3, :cond_b9

    const/4 v2, 0x1

    :cond_b9
    iput-boolean v2, p0, mHasPartialTypes:Z

    .line 1683
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/IntentFilter$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/IntentFilter$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object v0, p0, mCategories:Ljava/util/ArrayList;

    .line 253
    iput-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    .line 254
    iput-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 255
    iput-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    .line 256
    iput-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    .line 257
    iput-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    .line 258
    iput-boolean v1, p0, mHasPartialTypes:Z

    .line 368
    iput v1, p0, mPriority:I

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 370
    invoke-virtual {p0, p1}, addAction(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "dataType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object v0, p0, mCategories:Ljava/util/ArrayList;

    .line 253
    iput-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    .line 254
    iput-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 255
    iput-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    .line 256
    iput-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    .line 257
    iput-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    .line 258
    iput-boolean v1, p0, mHasPartialTypes:Z

    .line 391
    iput v1, p0, mPriority:I

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mActions:Ljava/util/ArrayList;

    .line 393
    invoke-virtual {p0, p1}, addAction(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, p2}, addDataType(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private static addStringToSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .registers 8
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .prologue
    const/4 v3, 0x0

    .line 275
    invoke-static {p0, p1, p2, p3}, findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result v2

    if-ltz v2, :cond_8

    .line 294
    :goto_7
    return-object p0

    .line 276
    :cond_8
    if-nez p0, :cond_13

    .line 277
    const/4 v2, 0x2

    new-array p0, v2, [Ljava/lang/String;

    .line 278
    aput-object p1, p0, v3

    .line 279
    const/4 v2, 0x1

    aput v2, p2, p3

    goto :goto_7

    .line 282
    :cond_13
    aget v0, p2, p3

    .line 283
    .local v0, "N":I
    array-length v2, p0

    if-ge v0, v2, :cond_1f

    .line 284
    aput-object p1, p0, v0

    .line 285
    add-int/lit8 v2, v0, 0x1

    aput v2, p2, p3

    goto :goto_7

    .line 289
    :cond_1f
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 290
    .local v1, "newSet":[Ljava/lang/String;
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    move-object p0, v1

    .line 292
    aput-object p1, p0, v0

    .line 293
    add-int/lit8 v2, v0, 0x1

    aput v2, p2, p3

    goto :goto_7
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;
    .registers 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "dataType"    # Ljava/lang/String;

    .prologue
    .line 346
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p0, p1}, <init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 347
    :catch_6
    move-exception v0

    .line 348
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad MIME type"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final findMimeType(Ljava/lang/String;)Z
    .registers 12
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1686
    iget-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    .line 1688
    .local v3, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    move v6, v7

    .line 1725
    :cond_7
    :goto_7
    return v6

    .line 1692
    :cond_8
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1697
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1698
    .local v4, "typeLength":I
    const/4 v8, 0x3

    if-ne v4, v8, :cond_25

    const-string v8, "*/*"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1699
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    move v6, v7

    goto :goto_7

    .line 1703
    :cond_25
    iget-boolean v8, p0, mHasPartialTypes:Z

    if-eqz v8, :cond_31

    const-string v8, "*"

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1707
    :cond_31
    const/16 v8, 0x2f

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1708
    .local v2, "slashpos":I
    if-lez v2, :cond_6d

    .line 1709
    iget-boolean v8, p0, mHasPartialTypes:Z

    if-eqz v8, :cond_47

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1712
    :cond_47
    add-int/lit8 v8, v2, 0x2

    if-ne v4, v8, :cond_6d

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_6d

    .line 1715
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1716
    .local v1, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5a
    if-ge v0, v1, :cond_6d

    .line 1717
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1718
    .local v5, "v":Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p1, v7, v5, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1716
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v5    # "v":Ljava/lang/String;
    :cond_6d
    move v6, v7

    .line 1725
    goto :goto_7
.end method

.method private static findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I
    .registers 8
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .prologue
    const/4 v2, -0x1

    .line 265
    if-nez p0, :cond_5

    move v1, v2

    .line 270
    :cond_4
    :goto_4
    return v1

    .line 266
    :cond_5
    aget v0, p2, p3

    .line 267
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_15

    .line 268
    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_15
    move v1, v2

    .line 270
    goto :goto_4
.end method

.method private static removeStringFromSet([Ljava/lang/String;Ljava/lang/String;[II)[Ljava/lang/String;
    .registers 10
    .param p0, "set"    # [Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "lengths"    # [I
    .param p3, "lenPos"    # I

    .prologue
    const/4 v5, 0x0

    .line 299
    invoke-static {p0, p1, p2, p3}, findStringInSet([Ljava/lang/String;Ljava/lang/String;[II)I

    move-result v3

    .line 300
    .local v3, "pos":I
    if-gez v3, :cond_8

    .line 315
    .end local p0    # "set":[Ljava/lang/String;
    :goto_7
    return-object p0

    .line 301
    .restart local p0    # "set":[Ljava/lang/String;
    :cond_8
    aget v0, p2, p3

    .line 302
    .local v0, "N":I
    array-length v4, p0

    div-int/lit8 v4, v4, 0x4

    if-le v0, v4, :cond_24

    .line 303
    add-int/lit8 v4, v3, 0x1

    sub-int v1, v0, v4

    .line 304
    .local v1, "copyLen":I
    if-lez v1, :cond_1a

    .line 305
    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v4, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    :cond_1a
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    aput-object v5, p0, v4

    .line 308
    add-int/lit8 v4, v0, -0x1

    aput v4, p2, p3

    goto :goto_7

    .line 312
    .end local v1    # "copyLen":I
    :cond_24
    array-length v4, p0

    div-int/lit8 v4, v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    .line 313
    .local v2, "newSet":[Ljava/lang/String;
    if-lez v3, :cond_2e

    invoke-static {p0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    :cond_2e
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v0, :cond_3b

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v3, 0x1

    sub-int v5, v0, v5

    invoke-static {p0, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3b
    move-object p0, v2

    .line 315
    goto :goto_7
.end method


# virtual methods
.method public final actionsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final addAction(Ljava/lang/String;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 463
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_11
    return-void
.end method

.method public final addCategory(Ljava/lang/String;)V
    .registers 4
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1165
    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCategories:Ljava/util/ArrayList;

    .line 1166
    :cond_b
    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1167
    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_1c
    return-void
.end method

.method public final addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V
    .registers 3
    .param p1, "ent"    # Landroid/content/IntentFilter$AuthorityEntry;

    .prologue
    .line 864
    iget-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    .line 866
    :cond_b
    iget-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    return-void
.end method

.method public final addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .prologue
    .line 858
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 859
    :cond_6
    new-instance v0, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/content/IntentFilter$AuthorityEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 860
    return-void
.end method

.method public final addDataPath(Landroid/os/PatternMatcher;)V
    .registers 3
    .param p1, "path"    # Landroid/os/PatternMatcher;

    .prologue
    .line 950
    iget-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    .line 951
    :cond_b
    iget-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    return-void
.end method

.method public final addDataPath(Ljava/lang/String;I)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 945
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, addDataPath(Landroid/os/PatternMatcher;)V

    .line 946
    return-void
.end method

.method public final addDataScheme(Ljava/lang/String;)V
    .registers 4
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 610
    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    .line 611
    :cond_b
    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 612
    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_1c
    return-void
.end method

.method public final addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V
    .registers 3
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    .prologue
    .line 770
    iget-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 771
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 773
    :cond_b
    iget-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    return-void
.end method

.method public final addDataSchemeSpecificPart(Ljava/lang/String;I)V
    .registers 4
    .param p1, "ssp"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 765
    new-instance v0, Landroid/os/PatternMatcher;

    invoke-direct {v0, p1, p2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V

    .line 766
    return-void
.end method

.method public final addDataType(Ljava/lang/String;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .prologue
    .line 534
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 535
    .local v0, "slashpos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 536
    .local v2, "typelen":I
    if-lez v0, :cond_55

    add-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_55

    .line 537
    iget-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    if-nez v3, :cond_1b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    .line 538
    :cond_1b
    add-int/lit8 v3, v0, 0x2

    if-ne v2, v3, :cond_43

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_43

    .line 539
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "str":Ljava/lang/String;
    iget-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 541
    iget-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :cond_3f
    const/4 v3, 0x1

    iput-boolean v3, p0, mHasPartialTypes:Z

    .line 549
    .end local v1    # "str":Ljava/lang/String;
    :cond_42
    :goto_42
    return-void

    .line 545
    :cond_43
    iget-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    .line 546
    iget-object v3, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 552
    :cond_55
    new-instance v3, Landroid/content/IntentFilter$MalformedMimeTypeException;

    invoke-direct {v3, p1}, Landroid/content/IntentFilter$MalformedMimeTypeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final authoritiesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final categoriesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1202
    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final countActions()I
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countCategories()I
    .registers 2

    .prologue
    .line 1175
    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final countDataAuthorities()I
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final countDataPaths()I
    .registers 2

    .prologue
    .line 958
    iget-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final countDataSchemeSpecificParts()I
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final countDataSchemes()I
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final countDataTypes()I
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public debugCheck()Z
    .registers 2

    .prologue
    .line 1626
    const/4 v0, 0x1

    return v0
.end method

.method public final describeContents()I
    .registers 2

    .prologue
    .line 1565
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 11
    .param p1, "du"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1476
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1477
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3d

    .line 1478
    iget-object v6, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1479
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1480
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1481
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Action: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_16

    .line 1486
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3d
    iget-object v6, p0, mCategories:Ljava/util/ArrayList;

    if-eqz v6, :cond_6e

    .line 1487
    iget-object v6, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1488
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 1489
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1490
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Category: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_47

    .line 1495
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6e
    iget-object v6, p0, mDataSchemes:Ljava/util/ArrayList;

    if-eqz v6, :cond_9f

    .line 1496
    iget-object v6, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1497
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 1498
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1499
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Scheme: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_78

    .line 1504
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9f
    iget-object v6, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v6, :cond_d0

    .line 1505
    iget-object v6, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1506
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_a9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 1507
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 1508
    .local v4, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1509
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Ssp: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_a9

    .line 1514
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_d0
    iget-object v6, p0, mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v6, :cond_117

    .line 1515
    iget-object v6, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1516
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :goto_da
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_117

    .line 1517
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1518
    .local v0, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1519
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Authority: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    # getter for: Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;
    invoke-static {v0}, Landroid/content/IntentFilter$AuthorityEntry;->access$000(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    # getter for: Landroid/content/IntentFilter$AuthorityEntry;->mPort:I
    invoke-static {v0}, Landroid/content/IntentFilter$AuthorityEntry;->access$100(Landroid/content/IntentFilter$AuthorityEntry;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1522
    # getter for: Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z
    invoke-static {v0}, Landroid/content/IntentFilter$AuthorityEntry;->access$200(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v6

    if-eqz v6, :cond_10f

    const-string v6, " WILD"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    :cond_10f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_da

    .line 1526
    .end local v0    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    :cond_117
    iget-object v6, p0, mDataPaths:Ljava/util/ArrayList;

    if-eqz v6, :cond_148

    .line 1527
    iget-object v6, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1528
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    :goto_121
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_148

    .line 1529
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PatternMatcher;

    .line 1530
    .restart local v4    # "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1531
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Path: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_121

    .line 1536
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v4    # "pe":Landroid/os/PatternMatcher;
    :cond_148
    iget-object v6, p0, mDataTypes:Ljava/util/ArrayList;

    if-eqz v6, :cond_179

    .line 1537
    iget-object v6, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1538
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_152
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_179

    .line 1539
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1540
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Type: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_152

    .line 1545
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_179
    iget v6, p0, mPriority:I

    if-nez v6, :cond_181

    iget-boolean v6, p0, mHasPartialTypes:Z

    if-eqz v6, :cond_1a3

    .line 1546
    :cond_181
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1547
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mPriority="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, mPriority:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1548
    const-string v6, ", mHasPartialTypes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, mHasPartialTypes:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1549
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1551
    :cond_1a3
    return-void
.end method

.method public final getAction(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 478
    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCategory(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1182
    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 880
    iget-object v0, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    return-object v0
.end method

.method public final getDataPath(I)Landroid/os/PatternMatcher;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 965
    iget-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public final getDataScheme(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 627
    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 787
    iget-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PatternMatcher;

    return-object v0
.end method

.method public final getDataType(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 583
    iget-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .registers 2

    .prologue
    .line 451
    iget v0, p0, mPriority:I

    return v0
.end method

.method public final hasAction(Ljava/lang/String;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 490
    if-eqz p1, :cond_c

    iget-object v0, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final hasCategory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1193
    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .registers 6
    .param p1, "auth"    # Landroid/content/IntentFilter$AuthorityEntry;

    .prologue
    const/4 v3, 0x0

    .line 899
    iget-object v2, p0, mDataAuthorities:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    move v2, v3

    .line 908
    :goto_6
    return v2

    .line 902
    :cond_7
    iget-object v2, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 903
    .local v1, "numDataAuthorities":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v1, :cond_23

    .line 904
    iget-object v2, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 905
    const/4 v2, 0x1

    goto :goto_6

    .line 903
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_23
    move v2, v3

    .line 908
    goto :goto_6
.end method

.method public final hasDataAuthority(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 894
    invoke-virtual {p0, p1}, matchDataAuthority(Landroid/net/Uri;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasDataPath(Landroid/os/PatternMatcher;)Z
    .registers 8
    .param p1, "path"    # Landroid/os/PatternMatcher;

    .prologue
    const/4 v3, 0x0

    .line 995
    iget-object v4, p0, mDataPaths:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 1005
    :cond_5
    :goto_5
    return v3

    .line 998
    :cond_6
    iget-object v4, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 999
    .local v1, "numDataPaths":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_5

    .line 1000
    iget-object v4, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 1001
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1002
    const/4 v3, 0x1

    goto :goto_5

    .line 999
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public final hasDataPath(Ljava/lang/String;)Z
    .registers 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 980
    iget-object v4, p0, mDataPaths:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 990
    :cond_5
    :goto_5
    return v3

    .line 983
    :cond_6
    iget-object v4, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 984
    .local v1, "numDataPaths":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_5

    .line 985
    iget-object v4, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 986
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 987
    const/4 v3, 0x1

    goto :goto_5

    .line 984
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public final hasDataScheme(Ljava/lang/String;)Z
    .registers 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 640
    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z
    .registers 8
    .param p1, "ssp"    # Landroid/os/PatternMatcher;

    .prologue
    const/4 v3, 0x0

    .line 816
    iget-object v4, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 826
    :cond_5
    :goto_5
    return v3

    .line 819
    :cond_6
    iget-object v4, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 820
    .local v1, "numDataSchemeSpecificParts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_5

    .line 821
    iget-object v4, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 822
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    if-ne v4, v5, :cond_31

    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 823
    const/4 v3, 0x1

    goto :goto_5

    .line 820
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public final hasDataSchemeSpecificPart(Ljava/lang/String;)Z
    .registers 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 801
    iget-object v4, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 811
    :cond_5
    :goto_5
    return v3

    .line 804
    :cond_6
    iget-object v4, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 805
    .local v1, "numDataSchemeSpecificParts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_5

    .line 806
    iget-object v4, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 807
    .local v2, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v2, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 808
    const/4 v3, 0x1

    goto :goto_5

    .line 805
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public final hasDataType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 564
    iget-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, findMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final hasExactDataType(Ljava/lang/String;)Z
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 569
    iget-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    .registers 12
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolve"    # Z
    .param p4, "logTag"    # Ljava/lang/String;

    .prologue
    .line 1257
    if-eqz p3, :cond_1d

    invoke-virtual {p2, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 1258
    .local v2, "type":Ljava/lang/String;
    :goto_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    move-object v0, p0

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1257
    .end local v2    # "type":Ljava/lang/String;
    :cond_1d
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method

.method public final match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/Uri;
    .param p6, "logTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1292
    .local p5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, matchAction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1295
    const/4 v1, -0x3

    .line 1329
    :cond_9
    :goto_9
    return v1

    .line 1298
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    .line 1299
    .local v1, "dataMatch":I
    if-ltz v1, :cond_9

    .line 1313
    invoke-virtual {p0, p5}, matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 1314
    .local v0, "categoryMismatch":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 1318
    const/4 v1, -0x4

    goto :goto_9
.end method

.method public final matchAction(Ljava/lang/String;)Z
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-virtual {p0, p1}, hasAction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final matchCategories(Ljava/util/Set;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1217
    if-nez p1, :cond_4

    .line 1234
    :cond_3
    :goto_3
    return-object v2

    .line 1221
    :cond_4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1223
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v3, p0, mCategories:Ljava/util/ArrayList;

    if-nez v3, :cond_19

    .line 1224
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    .line 1227
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1229
    .local v0, "category":Ljava/lang/String;
    iget-object v3, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    move-object v2, v0

    .line 1230
    goto :goto_3
.end method

.method public final matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/net/Uri;

    .prologue
    const/high16 v8, 0x580000

    const/4 v9, -0x1

    const/4 v7, -0x2

    .line 1079
    iget-object v6, p0, mDataTypes:Ljava/util/ArrayList;

    .line 1080
    .local v6, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, mDataSchemes:Ljava/util/ArrayList;

    .line 1082
    .local v5, "schemes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/high16 v2, 0x100000

    .line 1084
    .local v2, "match":I
    if-nez v6, :cond_16

    if-nez v5, :cond_16

    .line 1085
    if-nez p1, :cond_15

    if-nez p3, :cond_15

    const v7, 0x108000

    .line 1151
    .end local p2    # "scheme":Ljava/lang/String;
    :cond_15
    :goto_15
    return v7

    .line 1089
    .restart local p2    # "scheme":Ljava/lang/String;
    :cond_16
    if-eqz v5, :cond_65

    .line 1090
    if-eqz p2, :cond_53

    .end local p2    # "scheme":Ljava/lang/String;
    :goto_1a
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1091
    const/high16 v2, 0x200000

    .line 1096
    iget-object v4, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    .line 1097
    .local v4, "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    if-eqz v4, :cond_31

    .line 1098
    invoke-virtual {p3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, hasDataSchemeSpecificPart(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_56

    move v2, v8

    .line 1101
    :cond_31
    :goto_31
    if-eq v2, v8, :cond_42

    .line 1103
    iget-object v1, p0, mDataAuthorities:Ljava/util/ArrayList;

    .line 1104
    .local v1, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v1, :cond_42

    .line 1105
    invoke-virtual {p0, p3}, matchDataAuthority(Landroid/net/Uri;)I

    move-result v0

    .line 1106
    .local v0, "authMatch":I
    if-ltz v0, :cond_15

    .line 1107
    iget-object v3, p0, mDataPaths:Ljava/util/ArrayList;

    .line 1108
    .local v3, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    if-nez v3, :cond_58

    .line 1109
    move v2, v0

    .line 1121
    .end local v0    # "authMatch":I
    .end local v1    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_42
    :goto_42
    if-eq v2, v7, :cond_15

    .line 1137
    .end local v4    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_44
    if-eqz v6, :cond_82

    .line 1138
    invoke-direct {p0, p1}, findMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_80

    .line 1139
    const/high16 v2, 0x600000

    .line 1151
    :cond_4e
    const v7, 0x8000

    add-int/2addr v7, v2

    goto :goto_15

    .line 1090
    .restart local p2    # "scheme":Ljava/lang/String;
    :cond_53
    const-string p2, ""

    goto :goto_1a

    .end local p2    # "scheme":Ljava/lang/String;
    .restart local v4    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_56
    move v2, v7

    .line 1098
    goto :goto_31

    .line 1110
    .restart local v0    # "authMatch":I
    .restart local v1    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    :cond_58
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, hasDataPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1111
    const/high16 v2, 0x500000

    goto :goto_42

    .line 1130
    .end local v0    # "authMatch":I
    .end local v1    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v3    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    .end local v4    # "schemeSpecificParts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/PatternMatcher;>;"
    .restart local p2    # "scheme":Ljava/lang/String;
    :cond_65
    if-eqz p2, :cond_44

    const-string v8, ""

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    const-string v8, "content"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    const-string v8, "file"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    goto :goto_15

    .end local p2    # "scheme":Ljava/lang/String;
    :cond_80
    move v7, v9

    .line 1141
    goto :goto_15

    .line 1146
    :cond_82
    if-eqz p1, :cond_4e

    move v7, v9

    .line 1147
    goto :goto_15
.end method

.method public final matchDataAuthority(Landroid/net/Uri;)I
    .registers 8
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    const/4 v4, -0x2

    .line 1026
    iget-object v5, p0, mDataAuthorities:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    move v2, v4

    .line 1037
    :cond_6
    :goto_6
    return v2

    .line 1029
    :cond_7
    iget-object v5, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1030
    .local v3, "numDataAuthorities":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v3, :cond_21

    .line 1031
    iget-object v5, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1032
    .local v0, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1033
    .local v2, "match":I
    if-gez v2, :cond_6

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v0    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v2    # "match":I
    :cond_21
    move v2, v4

    .line 1037
    goto :goto_6
.end method

.method public final pathsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1410
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 1413
    .local v2, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_124

    const/4 v8, 0x3

    if-ne v7, v8, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_124

    .line 1415
    :cond_14
    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    .line 1420
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1421
    .local v6, "tagName":Ljava/lang/String;
    const-string v8, "action"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 1422
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1423
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 1424
    invoke-virtual {p0, v1}, addAction(Ljava/lang/String;)V

    .line 1471
    .end local v1    # "name":Ljava/lang/String;
    :cond_33
    :goto_33
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 1426
    :cond_37
    const-string v8, "cat"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 1427
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 1429
    invoke-virtual {p0, v1}, addCategory(Ljava/lang/String;)V

    goto :goto_33

    .line 1431
    .end local v1    # "name":Ljava/lang/String;
    :cond_4d
    const-string/jumbo v8, "type"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 1432
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1433
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 1435
    :try_start_60
    invoke-virtual {p0, v1}, addDataType(Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_33

    .line 1436
    :catch_64
    move-exception v8

    goto :goto_33

    .line 1439
    .end local v1    # "name":Ljava/lang/String;
    :cond_66
    const-string/jumbo v8, "scheme"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 1440
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1441
    .restart local v1    # "name":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 1442
    invoke-virtual {p0, v1}, addDataScheme(Ljava/lang/String;)V

    goto :goto_33

    .line 1444
    .end local v1    # "name":Ljava/lang/String;
    :cond_7d
    const-string/jumbo v8, "ssp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b3

    .line 1445
    const/4 v8, 0x0

    const-string/jumbo v9, "literal"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1446
    .local v5, "ssp":Ljava/lang/String;
    if-eqz v5, :cond_95

    .line 1447
    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8}, addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_33

    .line 1448
    :cond_95
    const/4 v8, 0x0

    const-string/jumbo v9, "prefix"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a4

    .line 1449
    const/4 v8, 0x1

    invoke-virtual {p0, v5, v8}, addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_33

    .line 1450
    :cond_a4
    const/4 v8, 0x0

    const-string/jumbo v9, "sglob"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 1451
    const/4 v8, 0x2

    invoke-virtual {p0, v5, v8}, addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_33

    .line 1453
    .end local v5    # "ssp":Ljava/lang/String;
    :cond_b3
    const-string v8, "auth"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 1454
    const/4 v8, 0x0

    const-string v9, "host"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1455
    .local v0, "host":Ljava/lang/String;
    const/4 v8, 0x0

    const-string/jumbo v9, "port"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1456
    .local v4, "port":Ljava/lang/String;
    if-eqz v0, :cond_33

    .line 1457
    invoke-virtual {p0, v0, v4}, addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 1459
    .end local v0    # "host":Ljava/lang/String;
    .end local v4    # "port":Ljava/lang/String;
    :cond_d1
    const-string/jumbo v8, "path"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 1460
    const/4 v8, 0x0

    const-string/jumbo v9, "literal"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1461
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_ea

    .line 1462
    const/4 v8, 0x0

    invoke-virtual {p0, v3, v8}, addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_33

    .line 1463
    :cond_ea
    const/4 v8, 0x0

    const-string/jumbo v9, "prefix"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_fa

    .line 1464
    const/4 v8, 0x1

    invoke-virtual {p0, v3, v8}, addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_33

    .line 1465
    :cond_fa
    const/4 v8, 0x0

    const-string/jumbo v9, "sglob"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1466
    const/4 v8, 0x2

    invoke-virtual {p0, v3, v8}, addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_33

    .line 1469
    .end local v3    # "path":Ljava/lang/String;
    :cond_10a
    const-string v8, "IntentFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown tag parsing IntentFilter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 1473
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_124
    return-void
.end method

.method public final schemeSpecificPartsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final schemesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final setPriority(I)V
    .registers 2
    .param p1, "priority"    # I

    .prologue
    .line 440
    iput p1, p0, mPriority:I

    .line 441
    return-void
.end method

.method public final typesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1569
    iget-object v2, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1570
    iget-object v2, p0, mCategories:Ljava/util/ArrayList;

    if-eqz v2, :cond_49

    .line 1571
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    iget-object v2, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1576
    :goto_13
    iget-object v2, p0, mDataSchemes:Ljava/util/ArrayList;

    if-eqz v2, :cond_4d

    .line 1577
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1578
    iget-object v2, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1582
    :goto_1f
    iget-object v2, p0, mDataTypes:Ljava/util/ArrayList;

    if-eqz v2, :cond_51

    .line 1583
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1584
    iget-object v2, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1588
    :goto_2b
    iget-object v2, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    if-eqz v2, :cond_55

    .line 1589
    iget-object v2, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1590
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1591
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    if-ge v1, v0, :cond_58

    .line 1592
    iget-object v2, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    invoke-virtual {v2, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1591
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1574
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_49
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 1580
    :cond_4d
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 1586
    :cond_51
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 1595
    :cond_55
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1597
    :cond_58
    iget-object v2, p0, mDataAuthorities:Ljava/util/ArrayList;

    if-eqz v2, :cond_76

    .line 1598
    iget-object v2, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1599
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_66
    if-ge v1, v0, :cond_79

    .line 1601
    iget-object v2, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter$AuthorityEntry;->writeToParcel(Landroid/os/Parcel;)V

    .line 1600
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 1604
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_76
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    :cond_79
    iget-object v2, p0, mDataPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_97

    .line 1607
    iget-object v2, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1608
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_87
    if-ge v1, v0, :cond_9a

    .line 1610
    iget-object v2, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    invoke-virtual {v2, p1, p2}, Landroid/os/PatternMatcher;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1609
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 1613
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_97
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    :cond_9a
    iget v2, p0, mPriority:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    iget-boolean v2, p0, mHasPartialTypes:Z

    if-eqz v2, :cond_a8

    move v2, v3

    :goto_a4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    return-void

    :cond_a8
    move v2, v4

    .line 1616
    goto :goto_a4
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1336
    invoke-virtual {p0}, countActions()I

    move-result v0

    .line 1337
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_23

    .line 1338
    const-string v5, "action"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1339
    const-string/jumbo v6, "name"

    iget-object v5, p0, mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1340
    const-string v5, "action"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1342
    :cond_23
    invoke-virtual {p0}, countCategories()I

    move-result v0

    .line 1343
    const/4 v2, 0x0

    :goto_28
    if-ge v2, v0, :cond_45

    .line 1344
    const-string v5, "cat"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1345
    const-string/jumbo v6, "name"

    iget-object v5, p0, mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1346
    const-string v5, "cat"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1343
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1348
    :cond_45
    invoke-virtual {p0}, countDataTypes()I

    move-result v0

    .line 1349
    const/4 v2, 0x0

    :goto_4a
    if-ge v2, v0, :cond_84

    .line 1350
    const-string/jumbo v5, "type"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1351
    iget-object v5, p0, mDataTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1352
    .local v4, "type":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_75

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1353
    :cond_75
    const-string/jumbo v5, "name"

    invoke-interface {p1, v7, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1354
    const-string/jumbo v5, "type"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1349
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1356
    .end local v4    # "type":Ljava/lang/String;
    :cond_84
    invoke-virtual {p0}, countDataSchemes()I

    move-result v0

    .line 1357
    const/4 v2, 0x0

    :goto_89
    if-ge v2, v0, :cond_a8

    .line 1358
    const-string/jumbo v5, "scheme"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1359
    const-string/jumbo v6, "name"

    iget-object v5, p0, mDataSchemes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v7, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1360
    const-string/jumbo v5, "scheme"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1357
    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 1362
    :cond_a8
    invoke-virtual {p0}, countDataSchemeSpecificParts()I

    move-result v0

    .line 1363
    const/4 v2, 0x0

    :goto_ad
    if-ge v2, v0, :cond_ee

    .line 1364
    const-string/jumbo v5, "ssp"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1365
    iget-object v5, p0, mDataSchemeSpecificParts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1366
    .local v3, "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_16e

    .line 1377
    :goto_c4
    const-string/jumbo v5, "ssp"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1363
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 1368
    :pswitch_cd
    const-string/jumbo v5, "literal"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c4

    .line 1371
    :pswitch_d8
    const-string/jumbo v5, "prefix"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c4

    .line 1374
    :pswitch_e3
    const-string/jumbo v5, "sglob"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c4

    .line 1379
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_ee
    invoke-virtual {p0}, countDataAuthorities()I

    move-result v0

    .line 1380
    const/4 v2, 0x0

    :goto_f3
    if-ge v2, v0, :cond_127

    .line 1381
    const-string v5, "auth"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1382
    iget-object v5, p0, mDataAuthorities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter$AuthorityEntry;

    .line 1383
    .local v1, "ae":Landroid/content/IntentFilter$AuthorityEntry;
    const-string v5, "host"

    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1384
    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v5

    if-ltz v5, :cond_11f

    .line 1385
    const-string/jumbo v5, "port"

    invoke-virtual {v1}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1387
    :cond_11f
    const-string v5, "auth"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1380
    add-int/lit8 v2, v2, 0x1

    goto :goto_f3

    .line 1389
    .end local v1    # "ae":Landroid/content/IntentFilter$AuthorityEntry;
    :cond_127
    invoke-virtual {p0}, countDataPaths()I

    move-result v0

    .line 1390
    const/4 v2, 0x0

    :goto_12c
    if-ge v2, v0, :cond_16d

    .line 1391
    const-string/jumbo v5, "path"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1392
    iget-object v5, p0, mDataPaths:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PatternMatcher;

    .line 1393
    .restart local v3    # "pe":Landroid/os/PatternMatcher;
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_178

    .line 1404
    :goto_143
    const-string/jumbo v5, "path"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1390
    add-int/lit8 v2, v2, 0x1

    goto :goto_12c

    .line 1395
    :pswitch_14c
    const-string/jumbo v5, "literal"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_143

    .line 1398
    :pswitch_157
    const-string/jumbo v5, "prefix"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_143

    .line 1401
    :pswitch_162
    const-string/jumbo v5, "sglob"

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_143

    .line 1406
    .end local v3    # "pe":Landroid/os/PatternMatcher;
    :cond_16d
    return-void

    .line 1366
    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_d8
        :pswitch_e3
    .end packed-switch

    .line 1393
    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_14c
        :pswitch_157
        :pswitch_162
    .end packed-switch
.end method
