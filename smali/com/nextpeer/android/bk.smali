.class final Lcom/nextpeer/android/bk;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nextpeer/android/bk;->a:Z

    return-void
.end method

.method public static a()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NPPrefrences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "npShouldLog"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/nextpeer/android/bk;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/nextpeer/android/bk;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0x1000

    if-le v0, v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    mul-int/lit16 v2, v0, 0x1000

    add-int/lit8 v1, v0, 0x1

    mul-int/lit16 v1, v1, 0x1000

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v1, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    const-string v3, "Nextpeer"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "Nextpeer"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static a(Z)V
    .locals 3

    sput-boolean p0, Lcom/nextpeer/android/bk;->a:Z

    invoke-static {}, Lcom/nextpeer/android/Nextpeer;->a()Lcom/nextpeer/android/Nextpeer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/Nextpeer;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NPPrefrences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "npShouldLog"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/nextpeer/android/bk;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Nextpeer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/nextpeer/android/bk;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Nextpeer"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/nextpeer/android/bk;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Nextpeer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/nextpeer/android/bk;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Nextpeer"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
