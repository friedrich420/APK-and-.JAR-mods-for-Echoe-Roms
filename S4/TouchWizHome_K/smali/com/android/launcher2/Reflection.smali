.class public final Lcom/android/launcher2/Reflection;
.super Ljava/lang/Object;
.source "Reflection.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 17
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 22
    :goto_0
    return-object v1

    .line 18
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 22
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getConstructor(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "accessible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 96
    .local v1, "foundConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .end local v1    # "foundConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 103
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "accessible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 35
    .local v1, "foundField":Ljava/lang/reflect/Field;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v1    # "foundField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 39
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "accessible"    # Z

    .prologue
    .line 26
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 29
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 29
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 142
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 148
    :goto_0
    return-object v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 148
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 145
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "accessible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 84
    .local v1, "foundMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "foundMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "accessible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 74
    .local v1, "foundMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "foundMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 79
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "accessible"    # Z

    .prologue
    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    .local v1, "foundMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .end local v1    # "foundMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 52
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "accessible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    .local v1, "foundMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .end local v1    # "foundMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 68
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 135
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "accessible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 108
    invoke-static {p0, p1, p3}, Lcom/android/launcher2/Reflection;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 109
    .local v0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-object v2

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 153
    const/4 v1, 0x1

    .line 159
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 159
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
