.class public final La/a/a/a/a/a/ah;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)La/a/a/a/a/ap;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    new-instance v0, La/a/a/a/a/am;

    invoke-direct {v0, p0}, La/a/a/a/a/am;-><init>(I)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, La/a/a/a/a/ap;

    invoke-direct {v0, p0}, La/a/a/a/a/ap;-><init>(I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
