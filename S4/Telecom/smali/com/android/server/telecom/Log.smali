.class public final Lcom/android/server/telecom/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final DEBUG:Z

.field private static ERROR:Z

.field private static FORCE_LOGGING:Z

.field private static INFO:Z

.field private static VERBOSE:Z

.field private static WARN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-string v0, "1"

    const-string v1, "persist.log.seclevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/Log;->FORCE_LOGGING:Z

    .line 41
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/server/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/Log;->DEBUG:Z

    .line 42
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/Log;->INFO:Z

    .line 43
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/Log;->VERBOSE:Z

    .line 44
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/server/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/Log;->WARN:Z

    .line 45
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/server/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/Log;->ERROR:Z

    return-void
.end method

.method private static varargs buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 206
    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :cond_1
    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "Log"

    const-string v2, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (An error occurred while formatting the message.)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/server/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "Telecom"

    invoke-static {p0}, Lcom/android/server/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/server/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "Telecom"

    invoke-static {p0, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/server/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "Telecom"

    invoke-static {p0}, Lcom/android/server/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/server/telecom/Log;->ERROR:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "Telecom"

    invoke-static {p0, p2, p3}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :cond_0
    return-void
.end method

.method private static getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    if-nez p0, :cond_0

    const-string v0, "<null>"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/server/telecom/Log;->INFO:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "Telecom"

    invoke-static {p0}, Lcom/android/server/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/server/telecom/Log;->INFO:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "Telecom"

    invoke-static {p0, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method private static isLoggable(I)Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/server/telecom/Log;->FORCE_LOGGING:Z

    if-nez v0, :cond_0

    const-string v0, "Telecom"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pii(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/android/server/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/Log;->secureHash([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static piiHandle(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 134
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/android/server/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 138
    :cond_1
    instance-of v0, p0, Landroid/net/Uri;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 139
    check-cast v0, Landroid/net/Uri;

    .line 142
    const-string v1, "tel"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    invoke-static {p0}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    .line 149
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    aget-char v4, v2, v0

    .line 152
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 153
    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 158
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static secureHash([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x10

    .line 176
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 181
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 182
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    if-ge v3, v5, :cond_0

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 182
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 84
    sget-boolean v0, Lcom/android/server/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "Telecom"

    invoke-static {p0}, Lcom/android/server/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/server/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "Telecom"

    invoke-static {p0, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/server/telecom/Log;->WARN:Z

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "Telecom"

    invoke-static {p0}, Lcom/android/server/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/server/telecom/Log;->WARN:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "Telecom"

    invoke-static {p0, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 129
    invoke-static {p0}, Lcom/android/server/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "Telecom"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "Telecom"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 115
    const-string v0, "Telecom"

    invoke-static {p0, p2, p3}, Lcom/android/server/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    return-void
.end method
