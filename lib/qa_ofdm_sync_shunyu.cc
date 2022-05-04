/* -*- c++ -*- */
/*
 * Copyright 2022 shunyu.
 *
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <customModule/ofdm_sync_shunyu.h>
#include "ofdm_sync_shunyu_impl.h"
#include <gnuradio/attributes.h>
#include <boost/test/unit_test.hpp>

namespace gr {
  namespace customModule {
    BOOST_AUTO_TEST_CASE(test_ofdm_sync_shunyu_t1)
    {
      gr::customModule::ofdm_sync_shunyu::sptr ofdm_sync(gr::customModule::ofdm_sync_shunyu::make(96, 16, false, 0.9)); 

    }
  } /* namespace customModule */
} /* namespace gr */
