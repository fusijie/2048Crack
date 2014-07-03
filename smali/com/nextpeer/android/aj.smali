.class final Lcom/nextpeer/android/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/af$ab;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/af$ab;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/aj;->a:Lcom/nextpeer/android/af$ab;

    iput-object p2, p0, Lcom/nextpeer/android/aj;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/nextpeer/android/aj;->d:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/nextpeer/android/aj;->a:Lcom/nextpeer/android/af$ab;

    iget-object v0, v0, Lcom/nextpeer/android/af$ab;->a:Lcom/nextpeer/android/ad;

    invoke-static {v0}, Lcom/nextpeer/android/af$ab;->a(Lcom/nextpeer/android/ad;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/aj;->a:Lcom/nextpeer/android/af$ab;

    iget-object v1, p0, Lcom/nextpeer/android/aj;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    iget-object v3, p0, Lcom/nextpeer/android/aj;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nextpeer/android/af$ab;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v1, Lcom/nextpeer/android/ad$aa;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/nextpeer/android/ad$aa;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->a:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/nextpeer/android/ad$aa;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->b:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/nextpeer/android/ad$aa;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->c:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->d:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/nextpeer/android/ad$aa;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->d:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v2, Lcom/nextpeer/android/ad$aa;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->e:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v2, Lcom/nextpeer/android/ad$aa;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->f:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->g:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v2, Lcom/nextpeer/android/ad$aa;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->g:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v2, Lcom/nextpeer/android/ad$aa;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->h:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->i:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v2, Lcom/nextpeer/android/ad$aa;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->i:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v2, Lcom/nextpeer/android/ad$aa;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v2, Lcom/nextpeer/android/ad$aa;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    sget-object v3, Lcom/nextpeer/android/ad$aa;->j:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/nextpeer/android/aj;->a:Lcom/nextpeer/android/af$ab;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/nextpeer/android/af$ab;->a(ZLjava/util/Map;)V

    iget-object v1, p0, Lcom/nextpeer/android/aj;->a:Lcom/nextpeer/android/af$ab;

    iget-object v2, p0, Lcom/nextpeer/android/aj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nextpeer/android/aj;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/nextpeer/android/aj;->d:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nextpeer/android/af$ab;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/nextpeer/android/aj;->a:Lcom/nextpeer/android/af$ab;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/af$ab;->a(Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    move-object v0, v1

    goto :goto_1
.end method
