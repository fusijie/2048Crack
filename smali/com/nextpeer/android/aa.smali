.class final Lcom/nextpeer/android/aa;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nextpeer/android/af;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nextpeer/android/aa;->a:Lcom/nextpeer/android/af;

    sput-object v0, Lcom/nextpeer/android/aa;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/aa;->a:Lcom/nextpeer/android/af;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/nextpeer/android/aa;->a:Lcom/nextpeer/android/af;

    invoke-virtual {v0}, Lcom/nextpeer/android/af;->b()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/nextpeer/android/aa;->a:Lcom/nextpeer/android/af;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nextpeer/android/af;

    invoke-static {}, Lcom/nextpeer/android/au;->a()Lcom/nextpeer/android/au;

    invoke-static {}, Lcom/nextpeer/android/au;->B()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/nextpeer/android/au;->a()Lcom/nextpeer/android/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/au;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/af;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/nextpeer/android/aa;->a:Lcom/nextpeer/android/af;

    invoke-virtual {v0}, Lcom/nextpeer/android/af;->a()V

    const-string v0, "%s:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    const-string v3, "NPA_"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/aa;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/aa;->a:Lcom/nextpeer/android/af;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/aa;->a:Lcom/nextpeer/android/af;

    invoke-virtual {v0, p0}, Lcom/nextpeer/android/af;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/nextpeer/android/aa;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
