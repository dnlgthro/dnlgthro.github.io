<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="playlist">
        <html>
            <head>
                <title>My Current Playlist</title>
                <link href="current-playlist.css" rel="stylesheet"/>
                <link href='https://fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'/>
            </head>
            <header>
                <h1>Web Architecture &amp; Design Portfolio — Record Shelf</h1>
            </header>
            
            <nav>
                <ul>
                    <li><a href="index2.html">Home</a></li>
                    <li><a href="approach.html">Portfolio Approach</a></li>
                    <li><a href="reading.html">Further Reading</a></li>
                </ul>
            </nav>
            <body>
                <article>
                   
                    <xsl:for-each select="album">
                        <xsl:sort select="artist/@ref" order="ascending"/>                        <section>
                            <figure>
                                <img>
                                    <xsl:attribute name="src">
                                        <xsl:text>images/</xsl:text>
                                        <xsl:value-of select="image"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:text>cover image for </xsl:text>
                                        <xsl:value-of select="title"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="width">
                                        <xsl:text>200</xsl:text>
                                    </xsl:attribute>
                                </img>
                                <figcaption>
                                    <small>
                                        <xsl:value-of select="title"/>
                                    </small>
                                </figcaption>
                            </figure>
                            <h2>
                                <xsl:value-of select="title"/>
                            </h2>
                            <p>
                                <b>Artist: </b>
                                <xsl:value-of select="artist"/>
                            </p>
                            <p><b>Year</b>: <xsl:value-of select="year"/>
                            </p>
                            <p><b>Genre</b>: <xsl:value-of select="genre"/>
                            </p>
                            <p>
                                <b>Time for only one song:</b>
                            </p>
                            <blockquote>
                                <p>
                                    <xsl:value-of select="description"/>
                                    <xsl:text> </xsl:text>
                                    <br/>
                                    <span class="normal">
                                    (<a>
                                        <xsl:attribute name="href"><xsl:value-of select="source"
                                            /></xsl:attribute>
                                        <xsl:attribute name="target">_blank</xsl:attribute>
                                        <xsl:text>Listen</xsl:text>
                                    </a>) </span></p>
                            </blockquote>

                            <p><b>Rating</b>: <img>
                                    <xsl:attribute name="src">
                                        <xsl:text>images/stars_</xsl:text>
                                        <xsl:value-of select="rating/@n"/>
                                        <xsl:text>.gif</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="alt">
                                        <xsl:value-of select="rating"/>
                                    </xsl:attribute>
                                </img>
                            </p>
                        </section>
                    </xsl:for-each>
                </article>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
