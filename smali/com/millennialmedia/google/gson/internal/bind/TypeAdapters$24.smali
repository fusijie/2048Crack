.class final Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$24;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$24;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/util/Locale;
    .locals 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v5, v6, :cond_0

    .line 731
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 732
    const/4 v5, 0x0

    .line 753
    :goto_0
    return-object v5

    .line 734
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 735
    .local v2, locale:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "_"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .local v3, tokenizer:Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .line 737
    .local v1, language:Ljava/lang/String;
    const/4 v0, 0x0

    .line 738
    .local v0, country:Ljava/lang/String;
    const/4 v4, 0x0

    .line 739
    .local v4, variant:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 740
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 742
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 743
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 745
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 746
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 748
    :cond_3
    if-nez v0, :cond_4

    if-nez v4, :cond_4

    .line 749
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_4
    if-nez v4, :cond_5

    .line 751
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 753
    :cond_5
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1, v0, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    check-cast p2, Ljava/util/Locale;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$24;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/util/Locale;)V

    return-void
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/util/Locale;)V
    .locals 1
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 760
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 761
    return-void

    .line 760
    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
