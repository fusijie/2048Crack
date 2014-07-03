.class final La/a/a/a/a/a/aa$aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/a/a/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "aa"
.end annotation


# instance fields
.field a:La/a/a/a/a/a/aa;

.field b:Ljava/lang/Thread;

.field c:La/a/a/a/a/an;

.field d:La/a/a/a/a/a/b/ad;

.field final synthetic e:La/a/a/a/a/a/aa;


# direct methods
.method constructor <init>(La/a/a/a/a/a/aa;La/a/a/a/a/a/aa;La/a/a/a/a/an;La/a/a/a/a/a/b/ad;)V
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/aa$aa;->a:La/a/a/a/a/a/aa;

    iput-object v0, p0, La/a/a/a/a/a/aa$aa;->b:Ljava/lang/Thread;

    iput-object p2, p0, La/a/a/a/a/a/aa$aa;->a:La/a/a/a/a/a/aa;

    iput-object p3, p0, La/a/a/a/a/a/aa$aa;->c:La/a/a/a/a/an;

    iput-object p4, p0, La/a/a/a/a/a/aa$aa;->d:La/a/a/a/a/a/b/ad;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MQTT Con: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v2

    invoke-interface {v2}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/a/a/a/aa$aa;->b:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/aa$aa;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final run()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v1, v1, La/a/a/a/a/a/aa;->l:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/aa;->k:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v1, v1, La/a/a/a/a/a/aa;->h:La/a/a/a/a/a/af;

    invoke-virtual {v1}, La/a/a/a/a/a/af;->b()[La/a/a/a/a/aj;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    iget-object v1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v1, v1, La/a/a/a/a/a/aa;->h:La/a/a/a/a/a/af;

    iget-object v2, p0, La/a/a/a/a/a/aa$aa;->c:La/a/a/a/a/an;

    iget-object v3, p0, La/a/a/a/a/a/aa$aa;->d:La/a/a/a/a/a/b/ad;

    invoke-virtual {v1, v2, v3}, La/a/a/a/a/a/af;->a(La/a/a/a/a/an;La/a/a/a/a/a/b/au;)V

    iget-object v1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    invoke-static {v1}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/a/aa;)[La/a/a/a/a/a/am;

    move-result-object v1

    iget-object v2, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    invoke-static {v2}, La/a/a/a/a/a/aa;->b(La/a/a/a/a/a/aa;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1}, La/a/a/a/a/a/am;->a()V

    iget-object v2, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    new-instance v3, La/a/a/a/a/a/ad;

    iget-object v4, p0, La/a/a/a/a/a/aa$aa;->a:La/a/a/a/a/a/aa;

    iget-object v5, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v5, v5, La/a/a/a/a/a/aa;->f:La/a/a/a/a/a/ab;

    iget-object v6, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v6, v6, La/a/a/a/a/a/aa;->h:La/a/a/a/a/a/af;

    invoke-interface {v1}, La/a/a/a/a/a/am;->b()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, La/a/a/a/a/a/ad;-><init>(La/a/a/a/a/a/aa;La/a/a/a/a/a/ab;La/a/a/a/a/a/af;Ljava/io/InputStream;)V

    iput-object v3, v2, La/a/a/a/a/a/aa;->c:La/a/a/a/a/a/ad;

    iget-object v2, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v2, v2, La/a/a/a/a/a/aa;->c:La/a/a/a/a/a/ad;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MQTT Rec: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    invoke-virtual {v4}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v4

    invoke-interface {v4}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, La/a/a/a/a/a/ad;->a(Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    new-instance v3, La/a/a/a/a/a/ae;

    iget-object v4, p0, La/a/a/a/a/a/aa$aa;->a:La/a/a/a/a/a/aa;

    iget-object v5, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v5, v5, La/a/a/a/a/a/aa;->f:La/a/a/a/a/a/ab;

    iget-object v6, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v6, v6, La/a/a/a/a/a/aa;->h:La/a/a/a/a/a/af;

    invoke-interface {v1}, La/a/a/a/a/a/am;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v4, v5, v6, v1}, La/a/a/a/a/a/ae;-><init>(La/a/a/a/a/a/aa;La/a/a/a/a/a/ab;La/a/a/a/a/a/af;Ljava/io/OutputStream;)V

    iput-object v3, v2, La/a/a/a/a/a/aa;->d:La/a/a/a/a/a/ae;

    iget-object v1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v1, v1, La/a/a/a/a/a/aa;->d:La/a/a/a/a/a/ae;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MQTT Snd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    invoke-virtual {v3}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v3

    invoke-interface {v3}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/a/a/a/a/a/ae;->a(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v1, v1, La/a/a/a/a/a/aa;->e:La/a/a/a/a/a/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MQTT Call: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    invoke-virtual {v3}, La/a/a/a/a/a/aa;->g()La/a/a/a/a/ab;

    move-result-object v3

    invoke-interface {v3}, La/a/a/a/a/ab;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La/a/a/a/a/a/ac;->a(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v2, p0, La/a/a/a/a/a/aa$aa;->d:La/a/a/a/a/a/b/ad;

    iget-object v3, p0, La/a/a/a/a/a/aa$aa;->c:La/a/a/a/a/an;

    invoke-virtual {v1, v2, v3}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/a/b/au;La/a/a/a/a/an;)V
    :try_end_0
    .catch La/a/a/a/a/ap; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v2, p0, La/a/a/a/a/a/aa$aa;->c:La/a/a/a/a/an;

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a/aa;->a(La/a/a/a/a/an;La/a/a/a/a/ap;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    aget-object v3, v2, v1

    iget-object v3, v3, La/a/a/a/a/aj;->a:La/a/a/a/a/a/ap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, La/a/a/a/a/a/ap;->a(La/a/a/a/a/ap;)V
    :try_end_1
    .catch La/a/a/a/a/ap; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v1, v1, La/a/a/a/a/a/aa;->l:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/aa;->k:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, La/a/a/a/a/a/aa$aa;->e:La/a/a/a/a/a/aa;

    iget-object v0, v0, La/a/a/a/a/a/aa;->l:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/aa;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.security.GeneralSecurityException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, La/a/a/a/a/am;

    invoke-direct {v0, v1}, La/a/a/a/a/am;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    new-instance v0, La/a/a/a/a/ap;

    invoke-direct {v0, v1}, La/a/a/a/a/ap;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
