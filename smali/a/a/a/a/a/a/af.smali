.class public La/a/a/a/a/a/af;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:La/a/a/a/a/b/ab;

.field private c:Ljava/util/Hashtable;

.field private d:Ljava/lang/String;

.field private e:La/a/a/a/a/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/a/a/af;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/af;->e:La/a/a/a/a/ap;

    sget-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    iget-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    iput-object p1, p0, La/a/a/a/a/a/af;->d:Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(La/a/a/a/a/a/b/ao;)La/a/a/a/a/aj;
    .locals 5

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/aj;

    iget-object v3, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, La/a/a/a/a/aj;

    iget-object v3, p0, La/a/a/a/a/a/af;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, La/a/a/a/a/aj;-><init>(B)V

    iget-object v3, v0, La/a/a/a/a/aj;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v3, v2}, La/a/a/a/a/a/ap;->a(Ljava/lang/String;)V

    iget-object v3, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v3, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;
    .locals 2

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/an;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)La/a/a/a/a/an;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/an;

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/af;->e:La/a/a/a/a/ap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final a(La/a/a/a/a/an;La/a/a/a/a/a/b/au;)V
    .locals 4

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->e:La/a/a/a/a/ap;

    if-nez v0, :cond_0

    invoke-virtual {p2}, La/a/a/a/a/a/b/au;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v2, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, p1, v0}, La/a/a/a/a/a/af;->a(La/a/a/a/a/an;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/af;->e:La/a/a/a/a/ap;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final a(La/a/a/a/a/an;Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p1, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v0, p2}, La/a/a/a/a/a/ap;->a(Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final a(La/a/a/a/a/ap;)V
    .locals 3

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iput-object p1, p0, La/a/a/a/a/a/af;->e:La/a/a/a/a/ap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(La/a/a/a/a/a/b/au;)La/a/a/a/a/an;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La/a/a/a/a/a/b/au;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/a/a/a/a/af;->b(Ljava/lang/String;)La/a/a/a/a/an;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)La/a/a/a/a/an;
    .locals 3

    iget-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    if-eqz p1, :cond_1

    iget-object v2, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/an;

    if-eqz v0, :cond_0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/a/a/a/an;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()[La/a/a/a/a/aj;
    .locals 5

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [La/a/a/a/a/aj;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/a/a/aj;

    monitor-exit v1

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/an;

    if-eqz v0, :cond_0

    instance-of v4, v0, La/a/a/a/a/aj;

    if-eqz v4, :cond_0

    iget-object v4, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v4}, La/a/a/a/a/a/ap;->k()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()Ljava/util/Vector;
    .locals 4

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/an;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, La/a/a/a/a/a/af;->b:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/af;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final e()I
    .locals 2

    iget-object v1, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/af;->c:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/an;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, La/a/a/a/a/an;->a:La/a/a/a/a/a/ap;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method
