.class public final Lcom/a/a/ba;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/a/a/d/aa;)Lcom/a/a/av;
    .locals 5

    invoke-virtual {p0}, Lcom/a/a/d/aa;->p()Z

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/a/a/d/aa;->a(Z)V

    :try_start_0
    invoke-static {p0}, Lcom/a/a/b/az;->a(Lcom/a/a/d/aa;)Lcom/a/a/av;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/a/a/d/aa;->a(Z)V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/a/a/az;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed parsing JSON source: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/a/a/az;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/a/a/d/aa;->a(Z)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lcom/a/a/az;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed parsing JSON source: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/a/a/az;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static a(Ljava/io/Reader;)Lcom/a/a/av;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/a/a/d/aa;

    invoke-direct {v0, p0}, Lcom/a/a/d/aa;-><init>(Ljava/io/Reader;)V

    invoke-static {v0}, Lcom/a/a/ba;->a(Lcom/a/a/d/aa;)Lcom/a/a/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/av;->j()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v0

    sget-object v2, Lcom/a/a/d/ac;->j:Lcom/a/a/d/ac;

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/a/a/be;

    const-string v1, "Did not consume the entire document."

    invoke-direct {v0, v1}, Lcom/a/a/be;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/a/a/d/ae; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/be;

    invoke-direct {v1, v0}, Lcom/a/a/be;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/a/a/aw;

    invoke-direct {v1, v0}, Lcom/a/a/aw;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/a/a/be;

    invoke-direct {v1, v0}, Lcom/a/a/be;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Lcom/a/a/av;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/a/ba;->a(Ljava/io/Reader;)Lcom/a/a/av;

    move-result-object v0

    return-object v0
.end method
